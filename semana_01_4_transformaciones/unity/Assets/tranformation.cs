using UnityEngine;



public class TransformSliderController : MonoBehaviour
{   
    //Contador de tiempo
    public float tiempo;
    //Parametros de la traslacion
    public float velocidad = 200f;
    public float tiempoSigTraslacion;
    public float sigDireccion;
    //Parametros del escalado
    public float amplitud = 0.2f;
    public float frecuencia = 1f;
    private Vector3 escalaInicial;

    [Header("Target")]
    public Transform target;

    void Start()
    {
        ParametrosTraslacion();
        escalaInicial = target.transform.localScale;
    }
    void Update()
    {   
        //traslacion aleatoria (entre 100 y 500) en sentido aleatorio (X o Y) cada n segundos aleatorios (entre 1 y 5 segundos)
        if (tiempo >= tiempoSigTraslacion)
        {  
            if (sigDireccion == 0)
            {
                target.transform.Translate(Vector3.right * velocidad * Time.deltaTime, Space.World);
            }
            else if(sigDireccion == 1)
            {
                target.transform.Translate(Vector3.up * velocidad * Time.deltaTime, Space.World);
            }
            else if(sigDireccion == 2)
            {
                target.transform.Translate(Vector3.down * velocidad * Time.deltaTime, Space.World);
            }
            else
            {
                target.transform.Translate(Vector3.left * velocidad * Time.deltaTime, Space.World);
            }
            ParametrosTraslacion();
        }
        //Rotación constante en el eje Y (45grados/seg)
        target.transform.Rotate(Vector3.up * 45f * Time.deltaTime); 

        // Escalado en función de seno
        float s = Mathf.Sin(Time.time * frecuencia) * amplitud;
        target.transform.localScale = escalaInicial + Vector3.one * s;
        
        tiempo += Time.deltaTime; //Aumentar el contador de tiempo
        
        
    }
    //Función para calcular los parámetros aleatorios de la siguiente traslacion
    void ParametrosTraslacion()
    {   
        velocidad = Random.Range(100,500);
        tiempoSigTraslacion = Random.Range(1f,5f);
        sigDireccion = Random.Range(0,4);
        tiempo = 0f; //Reiniciar el contador de tiempo
    }

}