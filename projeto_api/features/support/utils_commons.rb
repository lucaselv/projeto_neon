class ApiCommons
  def random_count(valor_count)
    @valor_count = rand(valor_count...999)
  end
end
