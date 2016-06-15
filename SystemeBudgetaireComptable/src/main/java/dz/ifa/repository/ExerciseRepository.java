package dz.ifa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dz.ifa.model.Exercise;


@Repository("exerciseRepository")
public interface ExerciseRepository extends JpaRepository<Exercise, Long>{
//	Exercise save(Exercise exercise);
}
