$(document).ready(function() {
	var i = 3;
	var nameArray;
	var amountArray;
	var amount;
	var sameClass;
	var nextSameIndex = 1;
	function uniqueArray(currentIndex) {
		if (currentIndex >= 0) {
			nextSameIndex = nameArray.indexOf(nameArray[currentIndex], currentIndex + 1);
			if (nextSameIndex >= 1) {
				nameArray[nextSameIndex] = "";

				amount += amountArray[nextSameIndex];
				sameClass = "same";
			}
		}

	}

	function appendMedicines() {
		i++;
		$html = '<li class="medicine">';
		$html += '<input type="text" class="name"/> ';
		$html += '<input type="text" class="amount" value="1" />';
		$html += '&nbsp;<select class="type"><option value="0">== Đơn vị ==</option><option value="1">Viên</option><option value="2">Chai</option></select>';
		$html += '&nbsp;<select class="using"><option value="0">== Liều dùng ==</option><option value="1">Trước khi ăn</option><option value="2">Sau khi ăn</option></select>';
		$html += '&nbsp;<a href="#" class="del">Xóa</a>';
		$html += '</li>';
		$("#medicine_list").append($html);
		if (i == 2) {
			$(".del").css("display", "inline");
		}

	}


	$("#addName").click(function() {
		appendMedicines();

		// return false;
	});
	$("#delAll").click(function() {
		$("#medicine_list").html("");
		i = 0;

		appendMedicines();
		$(".del").css("display", "none");
		// return false;
	});
	$("#printPrescription").live("click", function() {
		$("#result").html("<table border='1' id='resultTable'><tr><th id='colSTT'>STT</th><th class='data'>Tên thuốc</th><th class='data'>Số lượng</th><th class='data'>Đơn vị</th><th class='data'>Liều dùng</th></tr></table>");
		count = 0;
		nameArray = $(".name").map(function() {
			return $(this).val();
		}).get();
		amountArray = $(".amount").map(function() {
			return parseInt($(this).val());
		}).get();
		arrUsing = $(".using").map(function() {
			if ($(this).val() == 0)
				return "-";
			else
				return $(this).children(":selected").text();
		}).get();
		arrType = $(".type").map(function() {
			if ($(this).val() == 0)
				return "-";
			else
				return $(this).children(":selected").text();
		}).get();
		html = "";
		$.each(nameArray, function(key, name) {
			// name =
			// $(boxName).val();
			amount = amountArray[key];
			using = arrUsing[key];
			type = arrType[key];
			// alert(nameArray[key]);
			if (name) {
				sameClass = "";
				if ($("#cbUnique").is(':checked')) {
					while (nextSameIndex != -1) {
						uniqueArray(key);
					}
					nextSameIndex = 1;
				}

				count++;
				html += "<tr class='" + sameClass + "'><td class='stt'>" + count + "</td>";
				html += "<td>" + name + "</td>";
				html += "<td class='sl'>" + amount + "</td>";
				html += "<td class='loai'>" + type + "</td>";
				html += "<td class='lieudung'>" + using + "</td>";
				html += "</tr>";

			}

		});

		// html += "<tr><td colspan='5'
		// class='note'>Ghi chú: Thuốc nếu bị
		// trùng tên sẽ được tô xám và cộng gộp
		// số lượng.</td></tr>";

		$("#resultTable").append(html);

	});
	$(".del").live('click', function() {

		if (i > 1) {
			$(this).parent().remove();
			if (i == 2) {
				$(".del").css("display", "none");
			}
			i--;
		} else {
			// alert("You can not delete the last one");
			$(this).parent().children(".name").val("");
		}

	});

})
