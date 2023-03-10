import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Platform extends PositionComponent with CollisionCallbacks {
  Platform({
    required Vector2? position,
    required Vector2? size,
    Vector2? scale,
    double? angle,
    Anchor? anchor,
    Iterable<Component>? children,
    int? priority,
  }) : super(
          position: position,
          size: size,
          scale: scale,
          angle: angle,
          anchor: anchor,
        );
  // debugMode = true;

  @override
  Future<void>? onLoad() {
    // TODO: implement onLoad
    // debugMode = true;
    // passive so that it does not constantly check for collision

    add(RectangleHitbox()..collisionType = CollisionType.passive);
    return super.onLoad();
  }
}
