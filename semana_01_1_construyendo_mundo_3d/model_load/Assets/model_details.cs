using UnityEngine;

public class model_details : MonoBehaviour
{
    void Start()
    {
        MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();

        if (meshFilters.Length == 0)
        {
            Debug.Log("No hay MeshFilter en este objeto.");
            return;
        }

        foreach (MeshFilter mf in meshFilters)
        {
        Mesh mesh = mf.sharedMesh;

        int vertexCount = mesh.vertexCount;
        int subMeshCount = mesh.subMeshCount;
        uint triangleCount = mesh.GetIndexCount(0) / 3;

        Debug.Log("Información del modelo:");
        Debug.Log("Vértices: " + vertexCount);
        Debug.Log("Sub-mallas: " + subMeshCount);
        Debug.Log("Triángulos: " + triangleCount);
        }
    }

}

