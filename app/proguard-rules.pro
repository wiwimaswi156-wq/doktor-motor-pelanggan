# Rules untuk menjaga agar code penting tidak dihapus saat ProGuard aktif
# Firebase
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# Gson atau JSON parsing
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# Untuk data model yang digunakan Firestore
-keepclassmembers class * {
    @com.google.firebase.firestore.PropertyName <fields>;
}

# Untuk Parcelable
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# Default rules bawaan
-dontnote okhttp3.**
-dontwarn okhttp3.**
