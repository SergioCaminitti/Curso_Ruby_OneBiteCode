# # 1 - Renomendo o arquivo
# File.rename("data/files.txt", "data/courses.txt")

# 2 - Excluindo o arquivo
if File.exist?("data/filmes.txt")
  File.delete("data/filmes.txt")
end