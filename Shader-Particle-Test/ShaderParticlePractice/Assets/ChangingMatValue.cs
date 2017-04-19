using UnityEngine;
using System.Collections;

public class ChangingMatValue : MonoBehaviour
{
    public Renderer rend;
    void Start()
    {
        rend = GetComponent<Renderer>();
        rend.material.shader = Shader.Find("dissolve");
    }
    void Update()
    {
        float shininess = Mathf.PingPong(Time.time, 1.0F);
        rend.material.SetFloat("node_6863", shininess);
    }
}