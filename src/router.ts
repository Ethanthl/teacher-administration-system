import Express from 'express';
import HealthcheckController from './controllers/HealthcheckController';
import Register from './controllers/Register';
import Common from './controllers/Common';
import Suspend from './controllers/Suspend';


const router = Express.Router();
router.use('/', HealthcheckController);
router.use('/register', Register)
router.use('/commonstudents', Common)
router.use('/suspend', Suspend)


export default router;
