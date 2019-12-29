function choice(checkbox) {
    if (checkbox.checked == true) {
        var text = "";
        var check = "";
        // 기업분류
        if (checkbox.value == 0 || checkbox.value == 1 || checkbox.value == 2 || checkbox.value == 333) {
            text = '<li id="' + checkbox.value + '"> 기업분류 : ';

            switch (checkbox.value) {
                case "0":
                    text += "대기업";
                    check += "대기업";
                    break;
                case "1":
                    text += "중견기업";
                    check += "중견기업";
                    break;
                case "2":
                    text += "중소기업";
                    check += "중소기업";
                    break;
                case "333":
                    text += "기타";
                    check += "기타";
                    break;   
            }
        }
        // 희망 근무지역1
        if (checkbox.value == 100 || checkbox.value == 101 || checkbox.value == 102 || checkbox.value == 103 || checkbox.value == 104 || checkbox.value == 105 || checkbox.value == 106 || checkbox.value == 107 || checkbox.value == 108) {
            text = '<li id="' + checkbox.value + '"> 회사 위치 : ';

            switch (checkbox.value) {
                case "100":
                    text += "서울";
                    check += "서울";
                    break;
                case "101":
                    text += "경기";
                    check += "경기";
                    break;
                case "102":
                    text += "광주";
                    check += "광주";
                    break;
                case "103":
                    text += "대구";
                    check += "대구";
                    break;
                case "104":
                    text += "대전";  
                    check += "대전";
                    break;
                case "105":
                    text += "부산"; 
                    check += "부산";
                    break;
                case "106":
                    text += "울산";
                    check += "울산";
                    break;
                case "107":
                    text += "인천";
                    check += "인천";
                    break;
                case "108":
                    text += "세종";
                    check += "세종";
                    break;
            }
        }

        // 희망 근무지역2
        if (checkbox.value == 109 || checkbox.value == 110 || checkbox.value == 111 || checkbox.value == 112 || checkbox.value == 113 || checkbox.value == 114 || checkbox.value == 115 || checkbox.value == 116) {
            text = '<li id="' + checkbox.value + '"> 회사 위치 : ';

            switch (checkbox.value) {
                case "109":
                    text += "강원";
                    check += "강원";
                    break;
                case "110":
                    text += "경남";
                    check += "경남";
                    break;
                case "111":
                    text += "경북";
                    check += "경북";
                    break;
                case "112":
                    text += "전남";
                    check += "전남";
                    break;
                case "113":
                    text += "전북";
                    check += "전북";
                    break;
                case "114":
                    text += "충북";
                    check += "충북";
                    break;
                case "115":
                    text += "충남";
                    check += "충남";
                    break;
                case "116":
                    text += "제주";
                    check += "제주";
                    break;
            }
        }

        // 평균 급여
        if (checkbox.value == 2500 || checkbox.value == 3000 || checkbox.value == 3500 || checkbox.value == 4500 || checkbox.value == 5000 || checkbox.value == 9999) {
            text = '<li id="' + checkbox.value + '"> 평균 연봉 : ';

            switch (checkbox.value) {
                case "2500":
                    text += "~2,500만원";
                    break;
                case "3000":
                    text += "~3,000만원";
                    break;
                case "3500":
                    text += "~3,500만원";
                    break;
                case "4500":
                    text += "~4,500만원";
                    break;
                case "5000":
                    text += "~5,000만원";
                    break;
                case "9999":
                    text += "5,000만원 ↑";
                    break;
            }
        }

        $("#ul").append(text + '<input type="image" src="resources/images/x.png" onclick="reset(' + checkbox.value + ')"></input> </li>');
        var checkboxValues = [];
        if (checkbox.checked == true) {
        	
            checkboxValues.push(check);
        };
        $.ajax({
            url:"searchCompany.do",
            method:'GET',
            type: "json",
            data: { checkboxValues: check},
            success:function(data){
                var abc = 'searchCompany.do?check='+check
                alert(abc);
            },
            error:function(jqXHR, textStatus, errorThrown){
                alert("에러 발생");
                self.close();
            }
        });
    } else {
        $("#" + checkbox.value).remove();
    }
}




function reset(list) {
    if (list == 4) {
        $("#checkform").each(function () {
            this.reset();
        });

        $("#ul").empty();
    } else {
        $("#" + list).remove();

        $('input[id="c' + list + '"]').attr('checked', false);
    }
}

function like(id) {
    var state = $("#" + id).attr("src");
    
    if (state == "resources/images/emptystar.png") {
        $("#" + id).attr("src", "resources/images/fullstar.png");
        alert(id.substring(4));
    } else {
        $("#" + id).attr("src", "resources/images/emptystar.png");
        alert("2");
    }
}



