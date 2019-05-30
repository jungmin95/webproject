package kr.co.wp.service.logic;

import java.util.List;

@Service
public class TourlistServiceLogic {
	
	@Inject
	TourlistDAo tourlistDao;
	
	@Override
	public List<TourlistT0> listTourlist() {
		return tourlistDao.listTourlist();
	}

	@Override
	public TourlistT0 detailTourlist(int tourlistId) {
		return tourlistDao.detailTourlist(tourlistId);
	}
}
