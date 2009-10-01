module ClassesHelper
  def pnames
    out = '('
    out << @pnames.join(", ")
    out << ')'
  end
end
