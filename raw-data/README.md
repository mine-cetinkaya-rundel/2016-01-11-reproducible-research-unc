## Source

These data come from http://personality-testing.info/_rawdata/.

- Updated 5/18/2014. 
- Answers to the Big Five Personality Test, constructed with items from the International Personality Item Pool.
- Contains 50 likert rated statements, gender, age, race, native language, country.
- n = 19,719.

## Background

This data was collected (c. 2012) through on interactive online personality test. Participants were informed that their responses would be recorded and used for research at the beginning of the test and asked to confirm their consent at the end of the test.

## Codebook

- `race`: Chosen from a drop down menu. 
    + 1 = Mixed Race
    + 2 = Arctic (Siberian, Eskimo)
    + 3 = Caucasian (European)
    + 4 = Caucasian (Indian)
    + 5 = Caucasian (Middle East)
    + 6 = Caucasian (North African, Other)
    + 7 = Indigenous Australian
    + 8 = Native American
    + 9 = North East Asian (Mongol, Tibetan, Korean Japanese, etc)
    + 10 = Pacific (Polynesian, Micronesian, etc)
    + 11 = South East Asian (Chinese, Thai, Malay, Filipino, etc)
    + 12 = West African, Bushmen, Ethiopian
    + 13 = Other
    + (0=missed)

- `age`: Entered as text (individuals reporting age < 13 were not recorded)

- `engnat`: Response to "is English your native language?". 
    + 1 = yes
    + 2 = no 
    + (0 = missed)

- `gender`: Chosen from a drop down menu. 
    + 1 = Male
    + 2 = Female 
    + 3 = Other 
    + (0 = missed)

- `hand`: "What hand do you use to write with?". 
    + 1 = Right
    + 2 = Left 
    + 3 = Both 
    + (0 = missed)

- `source`: How the participant came to the test. Based on HTTP Referer. 
    + 1 = from another page on the test website, 
    + 2 = from google, 
    + 3 = from facebook, 
    + 4 = from any url with ".edu" in its domain name (e.g. xxx.edu, xxx.edu.au), 
    + 5 = other source, or HTTP Referer not provided.

- `country`: The participant's technical location. ISO country code.

- The following items were rated on a five point scale where 1 = Disagree, 3 = Neutral, 5 = Agree (0=missed). All were presented on one page in the order E1, N2, A1, C1, O1, E2, ...
    + `E1`: I am the life of the party. (+)
    + `E2`: I don't talk a lot. (-)
    + `E3`: I feel comfortable around people. (+)
    + `E4`: I keep in the background. (-)
    + `E5`: I start conversations. (+)
    + `E6`: I have little to say. (-)
    + `E7`: I talk to a lot of different people at parties. (+)
    + `E8`: I don't like to draw attention to myself. (-)
    + `E9`: I don't mind being the center of attention. (+)
    + `E10`: I am quiet around strangers. (-)
    + `N1`: I get stressed out easily. (-)
    + `N2`: I am relaxed most of the time. (+)
    + `N3`: I worry about things. (-)
    + `N4`: I seldom feel blue. (+)
    + `N5`: I am easily disturbed. (-)
    + `N6`: I get upset easily. (-)
    + `N7`: I change my mood a lot. (-)
    + `N8`: I have frequent mood swings. (-)
    + `N9`: I get irritated easily. (-)
    + `N10`: I often feel blue. (-)
    + `A1`: I feel little concern for others. (-)
    + `A2`: I am interested in people. (+)
    + `A3`: I insult people. (-)
    + `A4`: I sympathize with others' feelings. (+)
    + `A5`: I am not interested in other people's problems. (-)
    + `A6`: I have a soft heart. (+)
    + `A7`: I am not really interested in others. (-)
    + `A8`: I take time out for others. (+)
    + `A9`: I feel others' emotions. (+)
    + `A10`: I make people feel at ease. (+)
    + `C1`: I am always prepared. (+)
    + `C2`: I leave my belongings around. (-)
    + `C3`: I pay attention to details. (+)
    + `C4`: I make a mess of things. (-)
    + `C5`: I get chores done right away. (+)
    + `C6`: I often forget to put things back in their proper place. (-)
    + `C7`: I like order. (+)
    + `C8`: I shirk my duties. (-)
    + `C9`: I follow a schedule. (+)
    + `C10`: I am exacting in my work. (+)
    + `O1`: I have a rich vocabulary. (+)
    + `O2`: I have difficulty understanding abstract ideas. (-)
    + `O3`: I have a vivid imagination. (+)
    + `O4`: I am not interested in abstract ideas. (-)
    + `O5`: I have excellent ideas. (+)
    + `O6`: I do not have a good imagination. (-)
    + `O7`: I am quick to understand things. (+)
    + `O8`: I use difficult words. (+)
    + `O9`: I spend time reflecting on things. (+)
    + `O10`: I am full of ideas. (+)

The letters in the variable names indicate the scale on which that item is scored (i.e., of the five factors: (E = Extraversion, A = Agreeableness, C = Conscientiousness, N = Emotional Stability, or O = Intellect/Imagination). 

Also listed in parantheses are directions of scoring (+ or -):
    + For + keyed items, 1 = Disagree, 3 = Neutral, 5 = Agree (0 = missed)
    + For - keyed items, 1 = Agree, 3 = Neutral, 5 = Disagree (0 = missed)