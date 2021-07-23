defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dnaString = to_string(dna)

    # loop over each element of the dnaString
    # decoded = ""
    # decoded = if dnaString == "G" do
    #   decoded <> "C"
    # end

    # result = to_charlist(decoded)
    # result

    dnaString = String.replace(dnaString, "G", "Z") # temp placeholder so we can swap the C's, then we'll change these to C's
    dnaString = String.replace(dnaString, "C", "G")
    dnaString = String.replace(dnaString, "Z", "C")
    dnaString = String.replace(dnaString, "A", "U")
    dnaString = String.replace(dnaString, "T", "A")
    to_charlist(dnaString)
  end
end

RnaTranscription.to_rna('C')
