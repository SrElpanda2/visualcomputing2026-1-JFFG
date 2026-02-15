
//Imports necesarios, objLoader y controles orbitales
import * as THREE from 'three';
import { OBJLoader } from 'three/examples/jsm/loaders/OBJLoader.js';
import { OrbitControls } from "three/examples/jsm/controls/OrbitControls.js";




// Creación y configuración de la escena
const scene = new THREE.Scene();
scene.background = new THREE.Color(0x202020); //Color de fondo

// Creacíon de la cámara
const camera = new THREE.PerspectiveCamera(
    60,
    window.innerWidth / window.innerHeight,
    0.1,
    1000
);
camera.position.set(0, 0, 0); //Posición inicial de la cámara

// Creación del renderizador para visualizar los modelos
const renderer = new THREE.WebGLRenderer({ antialias: true });
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

// Creación de la iluminación, sin luz los modelos de ven completamente negros
const light = new THREE.HemisphereLight(0xffffff, 0x444444, 1.2);
scene.add(light);

// Creacion del OBJLoader para cargar los modelos
const loader = new OBJLoader();

// Creación de los controles orbitales
const controls = new OrbitControls(camera, renderer.domElement);

// Configuración de los controles orbitales

//Movimiento suavizado
controls.enableDamping = true;   
controls.dampingFactor = 0.05;
//Zoom
controls.screenSpacePanning = false;
controls.minDistance = 0.5;
controls.maxDistance = 20;   
//Centro de la órbita
controls.target.set(0, 0, 0); 
controls.update(); //Actualizar para aplicar los cambios


// Obtener estado del botón que va a iniciar la visualizacion de los modelos
document.getElementById("btnStart").onclick = abrir;
function abrir() {
    //Cargar el modelo 1
    loader.load("11717_bicycle_v2_L1.obj", (obj) => {
    obj.position.set(1, 1, 1); //Posición del modelo
    obj.scale.setScalar(0.03); //Escalamiento del modelo
    scene.add(obj); //Añadir el modelo a la escena
});
    //Cargar el modelo 2
    loader.load("10489_bicycle_L2.obj", (obj) => {
    obj.position.set(0, 0, 0);
    obj.scale.setScalar(0.01);
    scene.add(obj);
});
}

// Función Loop que genera la visualización
function animate() {
    requestAnimationFrame(animate);
    controls.update(); //Actualiza los controles orbitales
    renderer.render(scene, camera); //Renderiza la escena
}
animate();
