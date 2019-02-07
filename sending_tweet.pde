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
    cb.setOAuthConsumerKey("****");
    cb.setOAuthConsumerSecret("****");
    cb.setOAuthAccessToken("****");
    cb.setOAuthAccessTokenSecret("****");

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
