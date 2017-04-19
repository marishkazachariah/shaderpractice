using UnityEngine;
using System.Collections;

public class Floating : MonoBehaviour
{
    private float forceFactor;
    private Vector3 actionPoint;
    private Vector3 uplift;
    Vector3 buoyancyCentreOffset;
    public float waterLevel = -6.135068f;
    public float floatHeight = -4;
    public float bounceDamp = 0.05f;

    void Update()
    {
        actionPoint = transform.position + transform.TransformDirection(buoyancyCentreOffset);
        forceFactor = 1f - ((actionPoint.y - waterLevel) / floatHeight);

        if (forceFactor > 0f)
        {
            uplift = -Physics.gravity * (forceFactor - GetComponent<Rigidbody>().velocity.y * bounceDamp);
            GetComponent<Rigidbody>().AddForceAtPosition(uplift, actionPoint);
        }
    }
}