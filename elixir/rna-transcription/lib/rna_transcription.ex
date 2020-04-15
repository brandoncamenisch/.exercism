defmodule RnaTranscription do
  @rna_complements %{
    ?G => ?C,
    ?C => ?G,
    ?T => ?A,
    ?A => ?U,
  }
  
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA
  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(strand) do
    Enum.map strand, &(@rna_complements[&1])
  end
end
