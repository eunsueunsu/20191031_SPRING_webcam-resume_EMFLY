function choice(checkbox) {
    if (checkbox.checked == true) {
        var text = "";

        // 경력
        if (checkbox.value == 0 || checkbox.value == 1 || checkbox.value == 3 || checkbox.value == 5 || checkbox.value == 10 || checkbox.value == 15 || checkbox.value == 99) {
            text = '<li id="' + checkbox.value + '"> 경력 : ';

            switch (checkbox.value) {
                case "0":
                    text += "신입";
                    break;
                case "1":
                    text += "1년 ↓";
                    break;
                case "3":
                    text += "1~3년";
                    break;
                case "5":
                    text += "3~5년";
                    break;
                case "10":
                    text += "5~10년";
                    break;
                case "15":
                    text += "10~15년";
                    break;
                case "99":
                    text += "15년 ↑";
                    break;
            }
        }

        // 성별
        if (checkbox.value == 400 || checkbox.value == 500) {
            text = '<li id="' + checkbox.value + '"> 성별 : ';

            switch (checkbox.value) {
                case "400":
                    text += "남";
                    break;
                case "500":
                    text += "여";
                    break;
            }
        }

        // 나이
        if (checkbox.value == 20 || checkbox.value == 30 || checkbox.value == 35 || checkbox.value == 40 || checkbox.value == 50 || checkbox.value == 51) {
            text = '<li id="' + checkbox.value + '"> 나이 : ';

            switch (checkbox.value) {
                case "20":
                    text += "20세 ↓";
                    break;
                case "30":
                    text += "21~30세";
                    break;
                case "35":
                    text += "31~35세";
                    break;
                case "40":
                    text += "36~40세";
                    break;
                case "50":
                    text += "41~50세";
                    break;
                case "51":
                    text += "51세 ↑";
                    break;
            }
        }

        // 최종학력
        if (checkbox.value == 44 || checkbox.value == 23 || checkbox.value == 56 || checkbox.value == 11) {
            text = '<li id="' + checkbox.value + '"> 최종학력 : ';

            switch (checkbox.value) {
                case "44":
                    text += "4년제";
                    break;
                case "23":
                    text += "2,3년제";
                    break;
                case "56":
                    text += "석/박사";
                    break;
                case "11":
                    text += "고졸 이하";
                    break;
            }
        }

        // 희망 근무지역1
        if (checkbox.value == 100 || checkbox.value == 101 || checkbox.value == 102 || checkbox.value == 103 || checkbox.value == 104 || checkbox.value == 105 || checkbox.value == 106 || checkbox.value == 107 || checkbox.value == 108) {
            text = '<li id="' + checkbox.value + '"> 희망 근무지역 : ';

            switch (checkbox.value) {
                case "100":
                    text += "서울";
                    break;
                case "101":
                    text += "경기";
                    break;
                case "102":
                    text += "광주";
                    break;
                case "103":
                    text += "대구";
                    break;
                case "104":
                    text += "대전";
                    break;
                case "105":
                    text += "부산";
                    break;
                case "106":
                    text += "울산";
                    break;
                case "107":
                    text += "인천";
                    break;
                case "108":
                    text += "세종";
                    break;
            }
        }

        // 희망 근무지역2
        if (checkbox.value == 109 || checkbox.value == 110 || checkbox.value == 111 || checkbox.value == 112 || checkbox.value == 113 || checkbox.value == 114 || checkbox.value == 115 || checkbox.value == 116 || checkbox.value == 117) {
            text = '<li id="' + checkbox.value + '"> 희망 근무지역 : ';

            switch (checkbox.value) {
                case "109":
                    text += "강원";
                    break;
                case "110":
                    text += "경남";
                    break;
                case "111":
                    text += "경북";
                    break;
                case "112":
                    text += "전남";
                    break;
                case "113":
                    text += "전북";
                    break;
                case "114":
                    text += "충북";
                    break;
                case "115":
                    text += "충남";
                    break;
                case "116":
                    text += "제주";
                    break;
                case "117":
                    text += "전국";
                    break;
            }
        }

        // 직종 구분
        if (checkbox.value == 201 || checkbox.value == 202 || checkbox.value == 203 || checkbox.value == 204 || checkbox.value == 205 || checkbox.value == 206 || checkbox.value == 207 || checkbox.value == 208 || checkbox.value == 209) {
            text = '<li id="' + checkbox.value + '"> 직종 구분 : ';

            switch (checkbox.value) {
                case "201":
                    text += "경영/사무";
                    break;
                case "202":
                    text += "영업/고객상담";
                    break;
                case "203":
                    text += "건설";
                    break;
                case "204":
                    text += "생산/제조";
                    break;
                case "205":
                    text += "유통/무역";
                    break;
                case "206":
                    text += "IT/인터넷";
                    break;
                case "207":
                    text += "전문직";
                    break;
                case "208":
                    text += "디자인";
                    break;
                case "209":
                    text += "교육";
                    break;
            }
        }

        // 근무조건
        if (checkbox.value == 300 || checkbox.value == 301 || checkbox.value == 302 || checkbox.value == 303 || checkbox.value == 304) {
            text = '<li id="' + checkbox.value + '"> 근무조건 : ';

            switch (checkbox.value) {
                case "300":
                    text += "정규직";
                    break;
                case "301":
                    text += "계약직";
                    break;
                case "302":
                    text += "인턴직";
                    break;
                case "303":
                    text += "파견직";
                    break;
                case "304":
                    text += "프리랜서";
                    break;
            }
        }

        // 희망 급여
        if (checkbox.value == 2000 || checkbox.value == 2500 || checkbox.value == 3000 || checkbox.value == 3500 || checkbox.value == 4500 || checkbox.value == 5000 || checkbox.value == 9999) {
            text = '<li id="' + checkbox.value + '"> 희망 급여 : ';

            switch (checkbox.value) {
                case "2000":
                    text += "2,000만원 ↓";
                    break;
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

function sort(id) {
    $("#recent").removeClass("on");
    $("#age").removeClass("on");
    $("#study").removeClass("on");
    $("#salary").removeClass("on");

    switch (id) {
        case "recent":
            $("#recent").addClass("on");
            break;
        case "age":
            $("#age").addClass("on");
            break;
        case "study":
            $("#study").addClass("on");
            break;
        case "salary":
            $("#salary").addClass("on");
            break;
    }
}

function like(id) {
    var state = $("#" + id).attr("src");

    if (state == "resources/images/emptystar.png") {
        $("#" + id).attr("src", "resources/images/fullstar.png");
    } else {
        $("#" + id).attr("src", "resources/images/emptystar.png");
    }
}