# ID:     DNA
# Title:  Counting DNA Nucleotides

def counting_dna_nucleotides(filename):
    with open(filename, "r") as f:
        dna = f.readline()

        a = dna.count("A")
        c = dna.count("C")
        g = dna.count("G")
        t = dna.count("T")

        print(a, c, g, t)
