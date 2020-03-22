import 'quote.dart';


class QuotesBrain {

  static List<Quotes> quotesBank = [

    Quotes("Let's talk about how much I love you. Oh, if only you knew the lengths I'm willing to go to prove my love to you! Vastly better than any other partner, you are. Everyone can see how much I adore and love you."),
    Quotes("Whenever I think of you, I just can't help but smile. Falling in love with you is the greatest thing that has ever happened to me, and I've never been happier in my life. I know this feeling will last forever."),
    Quotes("Having you in my life makes each day a little brighter. I can't wait to wake up in the morning because I know you'll be there. I think of you often throughout the day, and I rush home from work, so I can be close to you again."),
    Quotes("Sometimes at night, I lay there listening to the rhythm of your breathing because it fills me with happiness to know you're there. Snuggling up to you brings me a sense of contentment that I never knew before. Knowing you love me as much as I love you brings me peace and joy."),
    Quotes("The things you are: protector, lover, friend, confidante, the love of my life and my entire world. The things I need beyond you: nothing."),
    Quotes("No matter what's coming in my day, I always know it will be a good one because at the end of it I get to see your smile. Tedious meetings? Boring busywork? None of it matters because I'll soon be in your arms. Thank you for being my vacation from the rest of the world."),
  ];

 var randomItem = (quotesBank..shuffle()).first;

 String getQuotes() {
  return randomItem.loveQuotes;
 }
}