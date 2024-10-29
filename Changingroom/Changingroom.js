
$(() => {
    $(".CChangingroom-name-button, .updateprferences").hide();

    window.addEventListener("message", (event) => {
        const item = event.data;
        if (item.type != undefined && item.type === "HUD") {
            if (item.visible == true) {
                $(".Changingroom-name-button").show();
            } else {
                $(".Changingroom-name-button").hide();
            }
        }

        if (item.type === "remove") {
            $(".Changingroom-name-button").hide()
        }

        $(document).on("click", "#Changingroom-button", ()=> {
            $(".Changing").slideDown();
            $(".Changing").fadeIn();
        })
        
        const SendNUIMessage = (name, data, calback) => {
            $.post(`https://Changingroom/${name}`, JSON.stringify(data, calback));
        }
        
        $(document).on("click", "chevron-up-circle-sharp", ()=> {
            // 
        });

        $(document).on("click", "chevron-down-circle", ()=> {
            // 
        });

        $(document).on("click", "chevron-back-circle", ()=> {
            // 
        });

        $(document).on("click", "chevron-forward-circle", ()=> {
            // 
        });

        $(document).on("click", "arrow-redo-circle-sharp", ()=> {
            // 
        })

        $(document).on("click", "arrow-undo-circle-sharp", ()=> {
            // 
        })

        $(document).on("click", "add-circle", ()=> {
            // 
        })

        $(document).on("click", "remove-circle", ()=> {
            // 
        });

        $(document).on("clcik", "#Setinfo", ()=> {

        });

        $(document).on("click", "#cancel", ()=> {

        })

        $(document).on("click", "#Setjoboutfit", ()=> {
            $(".updateprferences").slideDown();
            $(".updateprferences").fadeIn();
        })

        $(".close").click(function (e) {
            $.post(`https://Changingroom/close`, JSON.stringify({}))

        });

        $("#Update").click(() => {
            $.post(`https://Changingroom/confirm`, JSON.stringify({}))
        })

        $("#cancel").click(() => {
            $.post(`https://Changingroom/cancel`, JSON.stringify({}))
        })
    });
})


$(document).on('click', '.inc', function() {
    var currentFee = parseInt($('.field').text()); // Get current fee
    var newFee = currentFee + 1; // Increment fee
    $('.field').text(newFee); // Update the displayed number
});

// Handle minus button click
$(document).on('click', '.dec', function() {
    var currentFee = parseInt($('.field').text()); // Get current fee
    if (currentFee > 0) { // Ensure fee doesn't go below 0
        var newFee = currentFee - 1; // Decrement fee
        $('.field').text(newFee); // Update the displayed number
    }
});