import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Artist } from './artist.entity';
import { Genre } from './genre.entity';

@Entity('artist_genres')
export class ArtistGenre {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'artist_id', type: 'integer', nullable: false })
  artistId: number;

  @Column({ name: 'genre_id', type: 'integer', nullable: false })
  genreId: number;

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @ManyToOne(() => Artist, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'artist_id' })
  artist: Artist;

  @ManyToOne(() => Genre, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'genre_id' })
  genre: Genre;
}
