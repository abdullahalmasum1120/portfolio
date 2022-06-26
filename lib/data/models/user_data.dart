class UserData {
  String? name;
  String? image;
  List<String>? titles;
  String? resume;
  String? email;
  SocialLinks? socialLinks;
  List<Projects>? projects;
  List<Skills>? skills;

  UserData(
      {this.name,
      this.image,
      this.titles,
      this.resume,
      this.email,
      this.socialLinks,
      this.projects,
      this.skills});

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    titles = json['titles'].cast<String>();
    resume = json['resume'];
    email = json['email'];
    socialLinks = json['socialLinks'] != null
        ? SocialLinks.fromJson(json['socialLinks'])
        : null;
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(Projects.fromJson(v));
      });
    }
    if (json['skills'] != null) {
      skills = <Skills>[];
      json['skills'].forEach((v) {
        skills!.add(Skills.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['titles'] = titles;
    data['resume'] = resume;
    data['email'] = email;
    if (socialLinks != null) {
      data['socialLinks'] = socialLinks!.toJson();
    }
    if (projects != null) {
      data['projects'] = projects!.map((v) => v.toJson()).toList();
    }
    if (skills != null) {
      data['skills'] = skills!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SocialLinks {
  String? facebook;
  String? github;
  String? linkedin;
  String? whatsapp;

  SocialLinks({this.facebook, this.github, this.linkedin, this.whatsapp});

  SocialLinks.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    github = json['github'];
    linkedin = json['linkedin'];
    whatsapp = json['whatsapp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['facebook'] = facebook;
    data['github'] = github;
    data['linkedin'] = linkedin;
    data['whatsapp'] = whatsapp;
    return data;
  }
}

class Projects {
  String? name;
  String? image;
  Links? links;

  Projects({this.name, this.image, this.links});

  Projects.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }
}

class Links {
  String? github;
  String? android;
  String? ios;
  String? web;

  Links({this.github, this.android, this.ios, this.web});

  Links.fromJson(Map<String, dynamic> json) {
    github = json['github'];
    android = json['android'];
    ios = json['ios'];
    web = json['web'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['github'] = github;
    data['android'] = android;
    data['ios'] = ios;
    data['web'] = web;
    return data;
  }
}

class Skills {
  String? name;
  String? level;

  Skills({this.name, this.level});

  Skills.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['level'] = level;
    return data;
  }
}
