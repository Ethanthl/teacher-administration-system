import Express from 'express';
import HealthcheckController from './controllers/HealthcheckController';
import Register from './controllers/Register';


const router = Express.Router();
router.use('/', HealthcheckController);
router.use('/register', Register)

export default router;
