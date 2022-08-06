$(document).ready(function () {
    $(document).on("change", "select", function () {
        $("option[value=" + this.value + "]", this)
            .attr("selected", true).siblings()
            .removeAttr("selected")
        $("option[value=" + this.value + "]", this)
            .attr("selected", true).siblings().show()
        $("option[value=" + this.value + "]", this).attr("selected", true).css('display', 'none')
    });
    Fancybox.bind("[data-fancybox]", {
        caption: function (fancybox, carousel, slide) {
            return (
                `${slide.index + 1} / ${carousel.slides.length} <br />` + slide.caption
            );
        },
    });

    $(document).on('input', '.range', function (e) {

        var t = $(this);
        tV = t.val();
        t.css("--val", tV);
        t.closest(".lc_item").find(".range_result").val(tV);
        var interest = 0.0108333333
        var x = parseFloat(Math.pow(1 + interest, parseFloat($('#my_month').val())));
        var monthly = (parseFloat($('#my_credit').val()) * x * interest) / (x - 1);
        $('#my_month_pay').text(parseFloat(monthly).toFixed(2))
        console.log($('#my_month').val())
        $(this).css('background-size', (parseInt($(this).val()) / parseInt($(this).css('--max'))) * 100 + '%')
    })

    $('#my_month,#my_credit').on("input", function () {
        var interest = 0.0108333333
        var x = parseFloat(Math.pow(1 + interest, parseFloat($('#my_month').val())));
        var monthly = (parseFloat($('#my_credit').val()) * x * interest) / (x - 1);
        $('#my_month_pay').text(parseFloat(monthly).toFixed(2))
    })


    $('#my_sell').keyup(function () {
        my_sell = parseFloat($('#my_sell').val())
        course_usd = parseFloat($('#usd_course').text())
        course_eur = parseFloat($('#eur_course').text())
        selected_to = $(".s_curr_to option:selected")
        selected_from = $(".s_curr_from option:selected")
        if (selected_from.text() == 'AZN' && selected_to.text() == 'USD') {
            $('#my_buy').text((my_sell / course_usd).toFixed(2));
        } else if (selected_from.text() == 'AZN' && selected_to.text() == 'EUR') {
            $('#my_buy').text((my_sell / course_eur).toFixed(2));
        } else if (selected_from.text() == 'USD' && selected_to.text() == 'EUR') {
            $('#my_buy').text((my_sell * course_usd / course_eur).toFixed(2));
        } else if (selected_from.text() == 'EUR' && selected_to.text() == 'USD') {
            $('#my_buy').text((my_sell * course_eur / course_usd).toFixed(2));
        } else if (selected_from.text() == 'EUR' && selected_to.text() == 'AZN') {
            $('#my_buy').text((my_sell * course_eur).toFixed(2));
        } else if (selected_from.text() == 'USD' && selected_to.text() == 'AZN') {
            $('#my_buy').text((my_sell * course_usd).toFixed(2));
        }
    })


    $(document).on('keyup', '.range_result', function (e) {
        var t = $(this);

        if ($(this).parent().hasClass('lc_salary')) {
            maaw_ch = 1;
        }

        tV = t.val();
        r = t.siblings(".range")
        rMin = r.attr("min")
        rMax = r.attr("max");
        if (parseInt(tV) > parseInt(rMax)) t.val(rMax);
        if (parseInt(tV) < parseInt(rMin)) //t.val(rMin);
            if (tV.length < 1) t.val(rMin);
        tVnew = t.val();
        r.val(tVnew)
        r.css("--val", tVnew);
        if (tVnew > parseInt(rMin)) {
            if (typeof credit_json !== 'undefined') credit_hesabla();
            if (typeof deposit_calc_json !== 'undefined') calculateDepositData();
        }

    })
    $('.all_exchanges').hover(function(){
        $(this).css('background-color','#0091FE')
        $(this).css('color','white')
    },
    function(){
        $(this).css('background-color','white')
        $(this).css('color','#0091FE')
    })

})