import 'package:flutterstorybloktutorial/models/about_content.dart';
import 'package:flutterstorybloktutorial/models/contact_content.dart';
import 'package:flutterstorybloktutorial/models/experience_content.dart';
import 'package:flutterstorybloktutorial/models/storyblok_response.dart';

extension StoryblokExtensions on StoryblokResponse? {
  Story? sectionStory(String slug) {
    try {
      final stories = this!.stories!;
      final value = stories.firstWhere((element) => element.slug == slug);

      return value;
    } catch (e) {
      return null;
    }
  }

  ContactContent? get contactContent {
    try {
      final story = sectionStory('contact');
      final value = ContactContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }

  ExperienceContent? get experienceContent {
    try {
      final story = sectionStory('my-experience');
      final value = ExperienceContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }

  AboutContent? get aboutContent {
    try {
      final story = sectionStory('about-me');
      final value = AboutContent.fromJson(story?.content);

      return value;
    } catch (e) {
      return null;
    }
  }
}
