 
 auto_ptr<DBClientCursor> cursor = c.query("test.a", BSONObj());
while (cursor->more()) { 
  BSONObj p = cursor->next();
  cout << "Processing JSON document: " << p.toString() << std::endl;
  std::vector<BSONElement> returnObj = p.getField("x").Array();
  for (unsigned int i = 0; i<returnObj.size(); i++) {
      cout << "Processing array element: " << returnObj[i].str() << std::endl;
      cout << "                 of type: " << returnObj[i].type() << std::endl;
      BSONObj bo = returnObj[i].embeddedObject();
      cout << "Processing a field: " << bo.getField("a").toString() << std::endl;
      cout << "Processing b field: " << bo.getField("b").toString() << std::endl;
  }
 }