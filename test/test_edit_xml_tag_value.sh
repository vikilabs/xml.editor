cp test.xml .##test_bkup.xml

../src/edit_xml_tag_value "<debug>" "I am debuging" "test.xml"

cp test.xml .##test_bkup.xml

../src/edit_xml_tag_value "<debug>" "I am not debuging" "test.xml"

cmp --silent test.xml .##test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] edit_xml_tag_value test failed"
    exit 1
else    
    echo "[ SUCCESS] edit_xml_tag_value test successful"
fi

cp test.xml .##test_bkup.xml

../src/edit_xml_tag_value "<debug>" "I am debuging" "test.xml"

cmp --silent test.xml .##test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] edit_xml_tag_value test failed"
    exit 1
else    
    echo "[ SUCCESS] edit_xml_tag_value test successful"
fi

rm .##test_bkup.xml
