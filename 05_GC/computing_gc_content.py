datasetFile = "rosalind_gc.txt"

ids = []
dnaStrings = []
gcContent = []
dna = ""

with open(datasetFile) as f:
    for line in f.readlines():
        if line.startswith(">"):
            ids.append(line[1:].strip())
            if dna:
                dnaStrings.append(dna)
                gcContent.append(100*(dna.count("G") + dna.count("C"))/len(dna))
            dna = ""
        else:
            dna += line.strip()

i = gcContent.index(max(gcContent))

print(ids[i])
print(gcContent[i])
