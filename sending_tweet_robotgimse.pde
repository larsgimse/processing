import twitter4j.conf.*;
import twitter4j.*;
import twitter4j.auth.*;
import twitter4j.api.*;
import java.util.*;

Twitter twitter;

void setup()
{
    size(800,600);

    ConfigurationBuilder cb = new ConfigurationBuilder();
    cb.setOAuthConsumerKey("KF0sDbUfANTAMoQS3iikioPJk");
    cb.setOAuthConsumerSecret("T8ca055KeHaU0BrHQjKt4k56jSzRNqPMnNAokres6IhVTlheCG");
    cb.setOAuthAccessToken("822342768500637696-6LMVbXAqaNhgGjVs5xswIs8ehNAKma1");
    cb.setOAuthAccessTokenSecret("315m85HOWxX85FCLXUFVYKCHH2iSp7o57L6Y8fhGgJhmn");

    TwitterFactory tf = new TwitterFactory(cb.build());

    twitter = tf.getInstance();
}

void draw()
{

}

void tweet()
{
    try
    {
        Status status = twitter.updateStatus("This is a tweet sent from Processing!");
        System.out.println("Status updated to [" + status.getText() + "].");
    }
    catch (TwitterException te)
    {
        System.out.println("Error: "+ te.getMessage());
    }
}

void keyPressed()
{
    tweet();
}