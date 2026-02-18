using UnityEngine;
using UnityEngine.UI;

public class TransformSliderController : MonoBehaviour
{
    [Header("Target")]
    public Transform target;

    [Header("Position Sliders")]
    public Slider posX;
    public Slider posY;
    public Slider posZ;

    [Header("Rotation Sliders")]
    public Slider rotX;
    public Slider rotY;
    public Slider rotZ;

    [Header("Scale Sliders")]
    public Slider sclX;
    public Slider sclY;
    public Slider sclZ;

    void Update()
    {
        
        float nuevaPosicionX = posX.value;
        float nuevaPosicionY = posY.value;
        float nuevaPosicionZ = posZ.value;

        float nuevaRotacionX = rotX.value;
        float nuevaRotacionY = rotY.value;
        float nuevaRotacionZ = rotZ.value;
        
        float nuevaEscalaX = sclX.value;
        float nuevaEscalaY = sclY.value;
        float nuevaEscalaZ = sclZ.value;

        target.transform.position = new Vector3(nuevaPosicionX, nuevaPosicionY, nuevaPosicionZ);
        target.transform.localRotation = Quaternion.Euler(nuevaRotacionX, nuevaRotacionY, nuevaRotacionZ);
        target.transform.localScale = new Vector3(nuevaEscalaX, nuevaEscalaY, nuevaEscalaZ);
    }

}