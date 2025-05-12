struct Artist: Identifiable {
    let id = UUID()
    let name: String
    let bio: String
    let imageName: String
    let albums: [Album]
}