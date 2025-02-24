import 'dart:convert';

class ProgLang {
    int? id;
    String? nom;
    String? descripcio;
    String? foto;
    int? complicado;
    bool? funcional;

    ProgLang({
        this.id,
        this.nom,
        this.descripcio,
        this.foto,
        this.complicado,
        this.funcional,
    });

    factory ProgLang.fromRawJson(String str) => ProgLang.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProgLang.fromJson(Map<String, dynamic> json) => ProgLang(
        id: json["id"],
        nom: json["nom"],
        descripcio: json["descripcio"],
        foto: json["foto"],
        complicado: json["complicado"],
        funcional: json["funcional"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "descripcio": descripcio,
        "foto": foto,
        "complicado": complicado,
        "funcional": funcional,
    };
}
