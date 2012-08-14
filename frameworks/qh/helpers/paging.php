<?php
class Helper_Paging {
	private $url;
	private $page = 1;
	private $records;
	private $total;
	private $total_page;
	private $total_control_rows;
	private $length;
	private $min_length;
	private $index;
	public function getPage() {
		return $this -> page;
	}

	function __construct($config, $model) {
		if (isset($_GET['records'])) {
			$this -> records = $_GET['records'];
		} else {
			$this -> records = $config["records"];
		}
		if (isset($_GET['new_length'])) {
			$this -> min_length = $_GET['new_length'];
			$this -> length = $_GET['new_length'];
		} else {
			if (isset($_GET['min_length'])) {
				$this -> min_length = $_GET['min_length'];
			} else
				$this -> min_length = $config["length"];

		}
		if (isset($_GET['length'])) {
			$this -> length = $_GET['length'];

		} else {
			$this -> length = $this -> min_length;

		}
		if (isset($_GET['page'])) {
			$this -> page = $_GET['page'];
		}

		if (isset($_GET['total'])) {
			$this -> total = $_GET['total'];
		} else {
			$this -> total = $model -> getTotalRecords();
		}
		$this -> total_page = ceil($this -> total / $this -> records);
		
		if ($this -> total_page < $this -> min_length) {
			$this -> min_length = $this -> total_page;
			$this -> length = $this -> total_page;
		}
		
		$this -> index = ($this -> page - 1) * $this -> records;
		$model -> limit($this -> index, $this -> records);

	}

	private function getStartIndex() {
		$start = 0;

		if ($this -> page > ($this -> length / 2)) {
			$start = floor($this -> page - ($this -> length / 2));
		}
		if ($this -> page + $this -> length / 2 > $this -> total_page) {
			$start = ceil($start - ($this -> page + $this -> length / 2 - $this -> total_page));
		}
		if ($start < 0)
			$start = 0;
		return $start;

	}

	public function getPageLinks($url) {
		$this -> url = $url;
		$this -> total_control_rows = ceil($this -> total_page / $this -> min_length);
		$page = $this -> getStartIndex();
		$count = 0;
		$min_length = $this -> min_length;
		for ($i = 0; $i < $this -> total_control_rows; $i++) {
			for ($j = 0; $j < $this -> min_length; $j++) {

				$page++;
				$count++;
				if ($page > $this -> total_page || $count > ($this -> length)) {
					break;
				}
				if ($this -> page == $page) {
					$data['pages'][$i][$j] = "<a href='#' class='current paging'>$page</a>";
				} else {
					$data['pages'][$i][$j] = "<a href='$url&page=$page&length=$this->length&total=$this->total&records=$this->records&min_length=$min_length' class='paging'>$page</a>";
				}

			}
		}
		$data['page_controls'] = $this -> getPageControls();
		$data['paging_info']['index'] = $this -> index;
		$data['paging_info']['total'] = $this -> total;
		$data['paging_info']['total_page'] = $this -> total_page;
		$data['paging_info']['records'] = $this -> records;
		$data['paging_info']['min_length'] = $this -> min_length;
		return $data;
	}

	public function getNextPage() {
		if ($this -> page < $this -> $total_page) {
			return $this -> page + 1;
		} else {
			$this -> page;
		}
	}

	public function getPageControls() {
		if ($this -> length > $this -> min_length) {
			$page = $this -> page;
			$length = $this -> length - $this -> min_length;
			$data['less'] = "<a href='$this->url&page=$page&length=$length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'>... Less</a>";
		} else {
			$data['less'] = "<a class='paging-control-disable'>... Less</a>";
		}

		if ($this -> page > 1) {
			$data['first'] = "<a href='$this->url&page=1&length=$this->length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'><< First</a>";
		} else {
			$data['first'] = "<a class='paging-control-disable'><< First</a>";
		}

		if ($this -> page > 1) {
			$backPage = $this -> page - 1;
			$data['back'] = "<a href='$this->url&page=$backPage&length=$this->length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'>< Back</a>";
		} else {
			$backPage = $this -> page;
			$data['back'] = "<a class='paging-control-disable'>Back</a>";
		}
		//$data['page'] = $this -> $page;
		if ($this -> page < $this -> total_page) {
			$nextPage = $this -> page + 1;
			$data['next'] = "<a href='$this->url&page=$nextPage&length=$this->length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'>Next ></a>";
		} else {
			$data['next'] = "<a class='paging-control-disable'>Next</a>";
		}

		if ($this -> page < $this -> total_page) {
			$endPage = $this -> total_page;
			$data['end'] = "<a href='$this->url&page=$endPage&length=$this->length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'>Last >></a>";
		} else {
			$data['end'] = "<a class='paging-control-disable'>Last >></a>";
		}

		if ($this -> length < $this -> total_page) {
			$page = $this -> page;
			$length = $this -> length + $this -> min_length;
			$data['more'] = "<a href='$this->url&page=$page&length=$length&total=$this->total&records=$this->records&min_length=$this->min_length' class='paging-control'>More ...</a>";
		} else {
			$data['more'] = "<a class='paging-control-disable'>More ...</a>";
		}

		return $data;
	}

}
?>