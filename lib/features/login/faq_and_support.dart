import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaqAndSupport extends StatefulWidget {
  const FaqAndSupport({super.key});

  @override
  State<FaqAndSupport> createState() => _FaqAndSupportState();
}

class _FaqAndSupportState extends State<FaqAndSupport> {
  bool isVisible = true;
  bool isVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(forceMaterialTransparency: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'FAQ',
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' & ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Support',
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.0),

              Text(
                'Find answer to your problem using this app.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),

              SizedBox(height: 40.0),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF1F4C6B),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FaIcon(
                          FontAwesomeIcons.globe,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Visit our website'),
                    ),
                  ],
                ),
              ),

              Divider(thickness: .5),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF1F4C6B),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FaIcon(
                          FontAwesomeIcons.envelope,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Email us'),
                    ),
                  ],
                ),
              ),
              Divider(thickness: .5),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF1F4C6B),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RotatedBox(
                          quarterTurns: 90,
                          child: FaIcon(
                            FontAwesomeIcons.noteSticky,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Terms of service'),
                    ),
                  ],
                ),
              ),
              Divider(thickness: .5),

              SizedBox(height: 20),

              TextField(
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: 'Try find “how to”',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: Color(0xFFF5F4F8),
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: .5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: .7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Buyer')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Estate Agent')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What is Rise Real Estate?'),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      icon: Icon(
                        isVisible1 ? Icons.add : Icons.remove,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child:
                    isVisible1
                        ? Container(
                          width: double.maxFinite,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F4F8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.',
                          ),
                        )
                        : SizedBox.shrink(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Why choose buy in Rise?'),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.add : Icons.remove,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child:
                    isVisible
                        ? Container(
                          width: double.maxFinite,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F4F8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.',
                          ),
                        )
                        : SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
