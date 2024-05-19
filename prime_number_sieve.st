PROGRAM PrimeSieve
VAR
    n: INT := 100; // The upper limit to find primes
    isPrime: ARRAY [1..100] OF BOOL; // Array to hold prime status
    i, j: INT; // Loop counters
END_VAR

// Initialize the array to assume all numbers are prime
FOR i := 1 TO n DO
    isPrime[i] := TRUE;
END_FOR;

// Mark 1 as not prime
isPrime[1] := FALSE;

// Start the sieve algorithm
FOR i := 2 TO n DO
    IF isPrime[i] THEN
        // Mark all multiples of i as not prime
        j := i * 2;
        WHILE j <= n DO
            isPrime[j] := FALSE;
            j := j + i;
        END_WHILE;
    END_IF;
END_FOR;

END_PROGRAM
