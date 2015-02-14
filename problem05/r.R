
# Rprof()
system.time({
first <- 2 * 4 * 6 * 8 * 10
check_list = seq(9, 20)
for (i in seq(first, 999999999, 20)) {
    if ( all(i %% check_list == 0) ) {
        print(sprintf("Result: %d", i))
        break
    }
}
})
# Rprof(NULL)
# summaryRprof()