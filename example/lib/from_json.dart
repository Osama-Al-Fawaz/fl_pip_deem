import 'package:flutter/material.dart';

class DrawableFromJson {
  final String msg;
  final String id;
  final String method;
  final String paramsID;
  final String status;
  final String annotationType;
  final AnnotationInfo? annotationInfo;
  final TextAnnotationInfo? textAnnotationInfo;
  final String wbId;
  final String userId;
  final int position;

  DrawableFromJson(
      {required this.msg,
      required this.id,
      required this.method,
      required this.paramsID,
      required this.status,
      required this.annotationType,
      required this.annotationInfo,
      required this.wbId,
      required this.userId,
      required this.position,
      required this.textAnnotationInfo});
  static DrawableFromJson fromJson(json) {
    return DrawableFromJson(
      msg: json['msg'],
      id: json['id'],
      method: json['method'],
      paramsID: json['params'][0][0]['id'],
      status: json['params'][0][0]['status'],
      annotationType: json['params'][0][0]['annotationType'],
      annotationInfo: json['params'][0][0]['annotationType'] == 'pencil' ||
              json['params'][0][0]['annotationType'] == 'rectangle'
          ? AnnotationInfo.fromJson(json['params'][0][0]['annotationInfo'])
          : null,
      textAnnotationInfo: json['params'][0][0]['annotationType'] == 'text'
          ? TextAnnotationInfo.fromJson(json['params'][0][0]['annotationInfo'])
          : null,
      wbId: json['params'][0][0]['wbId'],
      userId: json['params'][0][0]['userId'],
      position: json['params'][0][0]['position'],
    );
  }

  static DrawableFromJson testFunction() {
    var myJson1 = {
      "msg": "method",
      "id": "8148",
      "method": "sendBulkAnnotations",
      "params": [
        [
          {
            "id": "w_bcljlnq4baif-2-1705301528141",
            "status": "DRAW_END",
            "annotationType": "rectangle",
            "annotationInfo": {
              "color": 16711680,
              "thickness": 0.2948982601002654,
              "points": [
                82.74881362915039,
                5.753861180058232,
                74.78647232055664,
                15.452842712402342
              ],
              "id": "w_bcljlnq4baif-2-1705301528141",
              "whiteboardId":
                  "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
              "status": "DRAW_END",
              "type": "rectangle",
              "fill": false
            },
            "wbId": "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
            "userId": "w_bcljlnq4baif",
            "position": 0
          }
        ]
      ]
    };
    var myJson2 = {
      "msg": "method",
      "id": "198",
      "method": "sendBulkAnnotations",
      "params": [
        [
          {
            "id": "w_bcljlnq4baif-3-1705225165037",
            "status": "DRAW_END",
            "annotationType": "pencil",
            "annotationInfo": {
              "color": 16711680,
              "thickness": 0.33288948069241014,
              "points": [
                42.74300893147787,
                83.79444263599537,
                42.90945370992025,
                83.20263897931135,
                43.07589848836263,
                82.90673715096933,
                43.24234326680501,
                82.3149334942853,
                43.4087880452474,
                82.01903166594329,
                43.57523282368978,
                81.72312983760128,
                43.90812238057455,
                80.83542435257523,
                44.07456715901692,
                80.53952252423322,
                44.24101193745931,
                80.24362069589121,
                44.57390149434408,
                79.65181703920717,
                44.906791051228836,
                79.35591521086516,
                44.906791051228836,
                79.06001338252315,
                45.23968060811361,
                78.76411155418114,
                45.23968060811361,
                78.46820972583912,
                45.40612538655599,
                78.46820972583912,
                45.572570164998375,
                78.1723078974971,
                45.73901494344075,
                77.8764060691551,
                45.90545972188314,
                77.58050424081307,
                46.07190450032552,
                77.28460241247106,
                46.238349278767906,
                76.98870058412905,
                46.40479405721029,
                76.69279875578704,
                46.571238835652665,
                76.69279875578704,
                46.571238835652665,
                76.39689692744503,
                46.737683614095054,
                76.39689692744503,
                46.737683614095054,
                76.100995099103,
                46.737683614095054,
                76.100995099103,
                46.737683614095054,
                76.100995099103,
                46.90412839253744,
                76.100995099103,
                46.90412839253744,
                75.80509327076099,
                47.07057317097982,
                75.80509327076099,
                47.07057317097982,
                75.50919144241898
              ],
              "id": "w_bcljlnq4baif-3-1705225165037",
              "whiteboardId":
                  "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
              "status": "DRAW_END",
              "type": "pencil",
              "dimensions": [601, 338]
            },
            "wbId": "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
            "userId": "w_bcljlnq4baif",
            "position": 0
          }
        ]
      ]
    };

    var myJson3 = {
      "msg": "method",
      "id": "8228",
      "method": "sendBulkAnnotations",
      "params": [
        [
          {
            "id": "w_bcljlnq4baif-5-1705301740758",
            "status": "DRAW_END",
            "annotationType": "text",
            "annotationInfo": {
              "x": 21.409303347269695,
              "y": 3.9189186802616827,
              "fontColor": 16711680,
              "calcedFontSize": 5.2426357351158295,
              "textBoxWidth": 30,
              "text": "ghjghj\n",
              "textBoxHeight": 20,
              "id": "w_bcljlnq4baif-5-1705301740758",
              "whiteboardId":
                  "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
              "status": "DRAW_END",
              "fontSize": 20,
              "dataPoints": "21.409303347269695,3.9189186802616827",
              "type": "text"
            },
            "wbId": "51ccaf033aca8e3a939471b198d1eaa2c2808ac0-1704948352106/2",
            "userId": "w_bcljlnq4baif",
            "position": 0
          }
        ]
      ]
    };

    // DrawableFromJson instance = fromJson(myJson1);
    // print(instance.annotationType);
    // print(instance.id);
    // print(instance.method);
    // print(instance.msg);
    // print(instance.paramsID);
    // print(instance.position);
    // print(instance.status);
    // print(instance.userId);
    // print(instance.wbId);
    // print('ANNOTATION INFO: ');
    // print(instance.annotationInfo.color.value);
    // print(instance.annotationInfo.fill.toString());
    // print(instance.annotationInfo.id);
    // print(instance.annotationInfo.status);
    // print(instance.annotationInfo.thickness);
    // print(instance.annotationInfo.type);
    // print(instance.annotationInfo.whiteboardId);
    // print(instance.annotationInfo.points.first.dx);
    // print(instance.annotationInfo.points.first.dy);
    // print(instance.annotationInfo.points.last.dx);
    // print(instance.annotationInfo.points.last.dy);

    return fromJson(myJson3);
  }
}

class AnnotationInfo {
  final Color color;
  final double thickness;
  final List<Offset> points;
  final String id;
  final String whiteboardId;
  final String status;
  final String type;
  final bool fill;

  AnnotationInfo({
    required this.color,
    required this.thickness,
    required this.points,
    required this.id,
    required this.whiteboardId,
    required this.status,
    required this.type,
    required this.fill,
  });
  static AnnotationInfo fromJson(json) {
    List<Offset> points = [];
    //TODO: discuss with senior, this value is technically not safe to use
    double x = 0.1234;
    double y = 0.1234;
    int i = 0;
    json['points'].forEach((element) {
      i++;
      if (i.isOdd) {
        x = element;
      } else {
        y = element;
      }
      if (x != 0.1234 && y != 0.1234) {
        points.add(Offset(x, y));
        x = 0.1234;
        y = 0.1234;
      }
    });
    return AnnotationInfo(
      color: Colors.black,
      thickness: json['thickness'],
      points: points,
      id: json['id'],
      whiteboardId: json['whiteboardId'],
      status: json['status'],
      type: json['type'],
      fill: json['fill'] ?? false,
    );
  }
}

class TextAnnotationInfo {
  final Offset placement;
  final Color fontColor;
  final double calcedFontSize;
  final int textBoxWidth;
  final int textBoxHeight;
  final String text;
  final String id;
  final String whiteboardId;
  final String status;
  // final String type;
  final int fontSize;
  TextAnnotationInfo({
    required this.placement,
    required this.calcedFontSize,
    required this.textBoxWidth,
    required this.fontColor,
    required this.textBoxHeight,
    required this.text,
    required this.id,
    required this.whiteboardId,
    required this.status,
    // required this.type,
    required this.fontSize,
  });

  static TextAnnotationInfo fromJson(json) {
    return TextAnnotationInfo(
      placement: Offset(json['x'], json['y']).scale(10, 10),
      calcedFontSize: json['calcedFontSize'],
      textBoxWidth: json['textBoxWidth'],
      fontColor: Colors.red,
      textBoxHeight: json['textBoxHeight'],
      text: json['text'],
      id: json['id'],
      whiteboardId: json['whiteboardId'],
      status: json['status'],
      // type: json[''],
      fontSize: json['fontSize'],
    );
  }
}
