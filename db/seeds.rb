if development?
    User.create(
        name: "テスト",
        account_name: "test",
        password: "lit-password",
        password_confirmation: "lit-password",
        icon_url: "https://res.cloudinary.com/konatsup/image/upload/v1551697723/qqh7y2n5e5vz40aew1jx.jpg"   
    )
end