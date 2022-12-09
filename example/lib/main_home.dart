import 'package:example/tips/tips_home.dart';
import 'package:example/widgets/widgets_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'accessibility/neumorphic_accessibility.dart';
import 'playground/neumorphic_playground.dart';
import 'playground/text_playground.dart';
import 'samples/sample_home.dart'; 

class FullSampleHomePage extends StatelessWidget {
  Widget _buildButton({String text, VoidCallback onClick}) {
    return NeumorphicButton(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 24,
      ),
      
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(12),
        ), 
        shape: NeumorphicShape.flat,
        // color: Colors.white
      ),
      child: Center(child: Text(text,)),
      onPressed: onClick,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildButton(
                  text: "Neumorphic Playground",
                  onClick: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NeumorphicPlayground();
                    }));
                  },
                ),
                SizedBox(height: 24),
                _buildButton(
                  text: "Text Playground",
                  onClick: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NeumorphicTextPlayground();
                    }));
                  },
                ),
                SizedBox(height: 24),
                _buildButton(
                    text: "Samples",
                    onClick: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SamplesHome();
                      }));
                    }),
                SizedBox(height: 24),
                _buildButton(
                    text: "Widgets",
                    onClick: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return WidgetsHome();
                      }));
                    }),
                SizedBox(height: 24),
                _buildButton(
                    text: "Tips",
                    onClick: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TipsHome();
                      }));
                    }),
                SizedBox(height: 24),
                _buildButton(
                    text: "Accessibility",
                    onClick: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return NeumorphicAccessibility();
                      }));
                    }),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
