PROGRAM BinarySearch

VAR
target: INT := 10;
list: ARRAY[1..8] OF INT := [1, 2, 5, 10, 12, 15, 17];
left: INT := 1;
right: INT;
result: BOOL;
END_VAR

// Set right to last element in array
right := UPPER_BOUND(list, 1);

result := BinSearch(target, list, left, right)


FUNCTION BinSearch : BOOL
VAR_INPUT
	target : INT;
	list : ARRAY[*] OF INT; //dynamic size array
	left : INT;
	right: INT;
END_VAR

VAR
	midpoint: INT;
END_VAR

// Recusive base case. If left > right target not present
IF left > right THEN
		BinSearch := FALSE;
ELSE
	midpoint := (left + right) / 2;
	// target is midpoint element
	IF list[midpoint] =  target THEN
		BinSearch := TRUE;
	// search left half, target is less than midpoint
	ELSIF target < list[midpoint] THEN
		BinSearch := BinSearch(target, list, left, midpoint - 1);
	// target is greater than midpoint, search right half
	ELSE 
		BinSearch(target, list, midpoint + 1, right);
	END_IF

END_FUNCTION

END_PROGRAM