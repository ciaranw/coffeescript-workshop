# destructuring assignments
# swapping arrays
first = 'first'
last = 'last'

[last, first] = [first, last]

# multiple assignment
calculation = (start) ->
    [start, start + 2, start * 4]

[base, plus2, times4] = calculation(2)

# fishing out data from nested objects
planetryData = {
    title: 'planets',
    data: {
        venus: {
            distance: '100'
        },
        mars: {
            temperature: {
                degrees: 18,
                farenheit: 36
            }
        }
    }
}

{
    #locate the 'data' node of 'planetryData'
    data : { 
        # locate the 'venus' node of 'data'
        venus: {
            # locate the 'distance' node of 'venus' and assign its value to the
            # new variable 'venusDistance'
            distance: venusDistance
        }, 
        mars: {
            temperature: {
                degrees: marsTemp
            }
        }
    }
} = planetryData
console.log "venus distance: #{venusDistance}, mars temperature: #{marsTemp}"

# great for function arguments too
init = ({client: {clientHost, clientPort}, timeout}) ->
    @clientHost = clientHost
    @clientPort = clientPort
    @timeout = timeout