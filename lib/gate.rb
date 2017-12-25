# Gate class
class Gate
    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [150,190]

    # Initialize Gate object
    # === Arguments
    # * +name+ - Station name
    def initialize(name)
        @name = name
    end

    # Enter to Station
    # === Arguments
    # * +ticket+ - Ticket
    def enter(ticket)
        ticket.stamp(@name)
    end

    # Exit from Station
    # === Arguments
    # * +ticket+ - Ticket
    # === Return Value
    # * +boolean+ - true fare is enough, false fare is not enough
    def exit(ticket)
        fare = calc_fare(ticket)
        fare <= ticket.fare
    end


    def calc_fare(ticket)
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@name)
        distance = to - from
        FARES[distance - 1]
    end
end