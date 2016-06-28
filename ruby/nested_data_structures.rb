shop_tools = {
    Moms_tools: {
        box: 'blue',
        tools: {
            wrenches: 2,
            parts: 3
        },
        parts: [
            "Axles",
            "Spacers"
        ]
    },
    Dads_tools: {
        box: 'yellow',
        tools: {
            testers: 3,
            snippers: 2
        },
        parts: [
            "Junction boxes",
            "Light switches"
        ]
    },
    Jrs_tools: {
        box: 'blue',
        tools: {
            socket_sets: 4,
            sockets: 28
        },
        parts: []
    }
}



# ADD ITEMS INTO JRS_TOOLS PARTS
#shop_tools[:Jrs_tools][:parts].push("supply lines, shut off valves")

=> ["supply lines, shut off valves"]


#IDENTIFY ITEM 0 IN JRS_TOOLS PARTS
shop_tools[:Moms_tools][:parts][0]

=> "Axles"


#WHAT ARE MOMS_TOOLS
shop_tools[:Dads_tools][:tools]

=> {:testers=>3, :snippers=>2}

