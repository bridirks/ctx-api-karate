// tags-runner allows us to select which type of test we would like to run (smoke or regression). 
//change the word in parentheses on line 10 to switch test types
package examples.tags;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)

@KarateOptions(tags = {"smoke"})
  
public class TagsRunner{

}
