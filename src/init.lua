local function levenshtein(a: string, b: string)
	local result = 0

	if a == b then
		return result
	end

	local lengthA = utf8.len(a)
	local lengthB = utf8.len(b)

	if lengthA == 0 then
		return lengthB
	end

	if lengthB == 0 then
		return lengthA
	end

	local cache = table.create(lengthA)
	for index = 1, lengthA do
		cache[index] = index
	end

	local distanceA: number
	local distanceB: number

	for indexB, codepointB in utf8.codes(b) do
		result = indexB
		distanceA = indexB

		for indexA, codepointA in utf8.codes(a) do
			distanceB = if codepointA == codepointB then distanceA else distanceA + 1
			distanceA = cache[indexA]

			result = if distanceA > result
				then if distanceB > result then result + 1 else distanceB
				else if distanceB > distanceA then distanceA + 1 else distanceB

			cache[indexA] = result
		end
	end

	return result - 1
end

return levenshtein
