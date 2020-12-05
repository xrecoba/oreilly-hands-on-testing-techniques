<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1572816553821" ID="ID_977663381" MODIFIED="1579176840235" TEXT="How are we gonna test this US?">
<node CREATED="1572816572970" FOLDED="true" ID="ID_68877414" MODIFIED="1572817915022" POSITION="right" TEXT="Grooming discussion">
<node CREATED="1572816585545" FOLDED="true" ID="ID_379229067" MODIFIED="1572817870060" TEXT="Do we have the data? ">
<node CREATED="1572816642746" ID="ID_1922277572" MODIFIED="1572816644429" TEXT="Yes, it&apos;s in the database"/>
</node>
<node CREATED="1572816601296" FOLDED="true" ID="ID_894861606" MODIFIED="1572817870733" TEXT="How are we going to implement it?">
<node CREATED="1572816653306" ID="ID_1860367160" MODIFIED="1572816654733" TEXT="It&apos;s gonna be a new parameter in the search query + checkbox in the UI for the user to add/remove the filter"/>
</node>
<node CREATED="1572816658514" FOLDED="true" ID="ID_1561521701" MODIFIED="1572817871189" TEXT="How will the user undo the filter selection?">
<node CREATED="1572816670996" ID="ID_224738209" MODIFIED="1572816688493" TEXT="Unchecking the checkbox"/>
</node>
<node CREATED="1572816689433" ID="ID_877069721" MODIFIED="1572816704749" TEXT="Which ratio of the appartments will have swimming pool?"/>
<node CREATED="1572816705650" ID="ID_1259497208" MODIFIED="1572816722270" TEXT="How many users do we expect will be filtering by swimming pool?"/>
<node CREATED="1572816723297" ID="ID_1618341121" MODIFIED="1572816763286" TEXT="In which section of the page do we plan to put it? The more users using it, and prominent we put it, more important it will be to test this thoroughly."/>
</node>
<node CREATED="1572816882027" FOLDED="true" ID="ID_356586879" MODIFIED="1572817885421" POSITION="right" TEXT="How are we gonna test it works?">
<node CREATED="1572816889835" ID="ID_1290068281" MODIFIED="1572816894622" TEXT="Unit tests (Devs)"/>
<node CREATED="1572816895354" FOLDED="true" ID="ID_1881343859" MODIFIED="1572817880526" TEXT="Integration or API tests?">
<node CREATED="1572816917242" FOLDED="true" ID="ID_136567227" MODIFIED="1572817879941" TEXT="API test to check it works. 2 queries (with filter, without)">
<node CREATED="1572816977054" ID="ID_1508746544" MODIFIED="1572816992935" TEXT="Maybe it needs extra data in the API tests database/demo database"/>
<node CREATED="1572816994643" FOLDED="true" ID="ID_1524484100" MODIFIED="1572817878533" TEXT="Impact on response time of the filter">
<node CREATED="1572817005693" ID="ID_1695535254" MODIFIED="1572817020240" TEXT="Now VS  before without the filter"/>
<node CREATED="1572817024373" ID="ID_375494132" MODIFIED="1572817028671" TEXT="With filter applied"/>
</node>
</node>
</node>
<node CREATED="1572817033027" FOLDED="true" ID="ID_1969948" MODIFIED="1572817881486" TEXT="E2E?">
<node CREATED="1572817039274" ID="ID_1081363536" MODIFIED="1572817052904" TEXT="Do we want to include that in our E2E tests? "/>
<node CREATED="1572817053332" ID="ID_676624653" MODIFIED="1572817065336" TEXT="Maybe we can modify one test to mark the check"/>
</node>
<node CREATED="1572817070308" FOLDED="true" ID="ID_1808037442" MODIFIED="1572817882286" TEXT="UX">
<node CREATED="1572817079141" ID="ID_678117156" MODIFIED="1572817092176" TEXT="Are we using the right metaphor?"/>
<node CREATED="1572817093116" ID="ID_68235902" MODIFIED="1572817107696" TEXT="Is it consistent with the rest of the UI?"/>
<node CREATED="1572817108332" ID="ID_104260257" MODIFIED="1572817119257" TEXT="Is it easy to understand by the user?"/>
<node CREATED="1572817119718" ID="ID_902937854" MODIFIED="1572817127192" TEXT="Hallway usability testing?"/>
<node CREATED="1572817104372" ID="ID_896445906" MODIFIED="1572817148544" TEXT="Are the buttons big enough for mobile?"/>
<node CREATED="1572817149205" ID="ID_1054751237" MODIFIED="1572817168561" TEXT="Can the filter be toggled clicking both on the text and the checkbox?"/>
</node>
<node CREATED="1572817175396" ID="ID_596602563" MODIFIED="1572817181960" TEXT="Review checklists"/>
<node CREATED="1572817182309" FOLDED="true" ID="ID_525003660" MODIFIED="1572817883313" TEXT="Error guessing">
<node CREATED="1572817189086" ID="ID_183819231" MODIFIED="1572817207033" TEXT="Did we had issues with similar elements before?"/>
</node>
<node CREATED="1572817210147" FOLDED="true" ID="ID_1217883921" MODIFIED="1572817883902" TEXT="Exploratory testing">
<node CREATED="1572817214470" ID="ID_1205693536" MODIFIED="1572817246177" TEXT="Add the filter (are there multiple ways?)"/>
<node CREATED="1572817221389" ID="ID_1770046999" MODIFIED="1572817243961" TEXT="Remove the filter (are there multiple ways?)"/>
<node CREATED="1572817246941" ID="ID_70103389" MODIFIED="1572817260474" TEXT="Open search with filter via direct URL"/>
<node CREATED="1572817261999" ID="ID_1211326111" MODIFIED="1572817271682" TEXT="Works without mouse nor keyboard?"/>
<node CREATED="1572817271981" ID="ID_706618106" MODIFIED="1572817282170" TEXT="Is it usable with accessibility helpers?"/>
<node CREATED="1572817284205" ID="ID_342551565" MODIFIED="1572817294041" TEXT="Is it consistent with the documentation (if any?)"/>
<node CREATED="1572817294774" ID="ID_1645224548" MODIFIED="1572817305418" TEXT="Try multiple browsers/devices"/>
<node CREATED="1572817305846" ID="ID_1301631253" MODIFIED="1572817308314" TEXT="Tours?"/>
<node CREATED="1572817309054" ID="ID_1740348664" MODIFIED="1572817336402" TEXT="Sabotage it"/>
</node>
</node>
<node CREATED="1572817339415" FOLDED="true" ID="ID_1587660473" MODIFIED="1572817890100" POSITION="right" TEXT="Applied testing techniques">
<node CREATED="1572817347983" FOLDED="true" ID="ID_1379967413" MODIFIED="1572817887293" TEXT="Do we have a model for our search?">
<node CREATED="1572817359206" ID="ID_25232227" MODIFIED="1572817376914" TEXT="If so, extend the model and generate tests"/>
</node>
<node CREATED="1572817384838" FOLDED="true" ID="ID_578496983" MODIFIED="1572817887796" TEXT="Did we use Pairwise to generate search filter combinations?">
<node CREATED="1572817398935" ID="ID_514648998" MODIFIED="1572817405514" TEXT="If so, extend and regenerate tests"/>
</node>
<node CREATED="1572817407543" FOLDED="true" ID="ID_1324730451" MODIFIED="1572817888404" TEXT="Boundary Value Analysis">
<node CREATED="1572817422112" ID="ID_406322234" MODIFIED="1572817431555" TEXT="Can we have houses with more than one swimming pool?"/>
<node CREATED="1572817436718" ID="ID_600730532" MODIFIED="1572817454731" TEXT="Do we distinguish between indoor and outdoor?">
<node CREATED="1572817458367" ID="ID_1494973260" MODIFIED="1572817471531" TEXT="Is a checkbox a proper UI to express these options?)"/>
<node CREATED="1572817472999" ID="ID_14141729" MODIFIED="1572817478196" TEXT="Heated swimming pools?"/>
</node>
</node>
<node CREATED="1572817479487" FOLDED="true" ID="ID_886594766" MODIFIED="1572817889276" TEXT="Fuzz testing">
<node CREATED="1572817487872" ID="ID_1422791724" MODIFIED="1572817503100" TEXT="Pick an API query with swimming pool and fuzz them"/>
</node>
</node>
<node CREATED="1572817507120" ID="ID_699068965" MODIFIED="1579176825510" POSITION="right" TEXT="Agile">
<node CREATED="1572817511385" FOLDED="true" ID="ID_1796375035" MODIFIED="1572817892485" TEXT="Monitoring">
<node CREATED="1572817564362" FOLDED="true" ID="ID_556219011" MODIFIED="1572817891549" TEXT="Do we want statistics of the feature usage?">
<node CREATED="1572817577912" ID="ID_568603720" MODIFIED="1572817591724" TEXT="Number of results returned per query"/>
<node CREATED="1572817592472" ID="ID_755858737" MODIFIED="1572817611620" TEXT="Cross check with browsers and devices (to ensure it works for all possible combinations)"/>
</node>
</node>
<node CREATED="1572817615529" FOLDED="true" ID="ID_530554199" MODIFIED="1572817895724" TEXT="Performance tests">
<node CREATED="1572817623256" FOLDED="true" ID="ID_1695191852" MODIFIED="1572817894934" TEXT="Should we update our load tests to accommodate the new US?">
<node CREATED="1572817638489" ID="ID_1796363747" MODIFIED="1572817692188" TEXT="Since we still don&apos;t know the frequency, we can extrapolate usage from other filters and update the test in future sprints when production usage metrics are known"/>
<node CREATED="1572817694161" ID="ID_1782940977" MODIFIED="1572817740076" TEXT="One time, what if we stress the system with these types of queries? (knowing your system internals may be very important in order to decide which test to do)"/>
</node>
</node>
<node CREATED="1572817742705" FOLDED="true" ID="ID_1077308450" MODIFIED="1572817897107" TEXT="Test case manager">
<node CREATED="1572817750681" FOLDED="true" ID="ID_712830916" MODIFIED="1572817896606" TEXT="Which non automated tests are worth keeping track of?">
<node CREATED="1572817762538" ID="ID_1831853245" MODIFIED="1572817768030" TEXT="Add them to the system"/>
</node>
</node>
</node>
</node>
</map>
