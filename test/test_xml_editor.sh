cp test.xml .##test_bkup.xml

../src/xml_editor "<debug>" "I am debuging" "test.xml"

cp test.xml .##test_bkup.xml

../src/xml_editor "<debug>" "I am not debuging" "test.xml"

cmp --silent test.xml .##test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] xml_editor test failed"
    exit 1
else    
    echo "[ SUCCESS] xml_editor test successful"
fi

cp test.xml .##test_bkup.xml

../src/xml_editor "<debug>" "I am debuging" "test.xml"

cmp --silent test.xml .##test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] xml_editor test failed"
    exit 1
else    
    echo "[ SUCCESS] xml_editor test successful"
fi

rm .##test_bkup.xml
