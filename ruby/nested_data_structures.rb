#WORKSHOP TOOL INVENTORY

shop_tools = {
    moms_tools: {
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
    dads_tools: {
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
    jrs_tools: {
        box: 'blue',
        tools: {
            socket_sets: 4,
            sockets: 28
        },
        parts: []
    }
}



# ADD ITEMS INTO JRS_TOOLS PARTS
shop_tools[:jrs_tools][:parts].push("supply lines, shut off valves")

=> ["supply lines, shut off valves"]


#IDENTIFY FIRST ITEM IN MOMS_TOOLS PARTS
shop_tools[:moms_tools][:parts][0]

=> "Axles"


#WHAT ARE DAD_TOOLS
shop_tools[:dads_tools][:tools]

=> {:testers=>3, :snippers=>2}

#REVERSE DADS TOOLS PARTS
shop_tools[:dads_tools][:parts].reverse

=> ["Light switches", "Junction boxes"]



