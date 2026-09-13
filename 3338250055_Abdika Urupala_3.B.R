# Memuat data iris bawaan dari R
data("iris")

#1
print("Tampilkan data Sepal.Length saja")
iris$Sepal.Length 

#2
print("Sebutkan tipe data tiap kolom")
sapply(iris, class) 

#3
print("Membuat variabel baru dengan nama turunan")
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")

#4
print("Mengubah variabel turunan menjadi sepal")
names(iris)[names(iris) == "turunan"] <- "sepal"

#5
print("Data besar pada spesies virginica")
subset(iris, sepal == "Besar" & Species == "virginica")

#6
print("Jumlah species dalam data")
table(iris$Species)

#7
iris_split <- split(iris, iris$Species)
df_setosa <- iris_split$setosa
df_versicolor <- iris_split$versicolor
df_virginica <- iris_split$virginica
print(iris_split)

#8
df_setosa_sorted <- df_setosa[order(df_setosa$Sepal.Width), ]
df_versicolor_sorted <- df_versicolor[order(df_versicolor$Sepal.Width), ]
df_virginica_sorted <- df_virginica[order(df_virginica$Sepal.Width), ]
print(df_setosa_sorted)
print(df_versicolor_sorted)
print(df_virginica_sorted)
