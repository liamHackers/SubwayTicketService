package com.four.five.test;


 
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
 
public class Test {
    static Map<Integer,Station> stationMap=new HashMap<Integer,Station>();
    public static void main(String[] args) {
         
         System.out.println("李灵勇是傻逼！");
                Station station1=new Station(1,"1���ߵ�һվ",true,false);
        Station station2=new Station(1,"1���ߵڶ�վ",false,false);
        station1.setNextStation(station2);
        Station station3=new Station(1,"����վ",false,true);
        station3.addTransferStations(2);
        station2.setNextStation(station3);
        Station station4=new Station(1,"1���ߵ���վ",true,false);
              station3.setNextStation(station4);
              
         
         
        Station station21=new Station(2,"2���ߵ�һվ",true,false);
        Station station22=new Station(2,"2���ߵڶ�վ",false,false);
        station21.setNextStation(station22);
        Station station23=new Station(2,"����վ",false,true);
        station23.addTransferStations(1);
        station22.setNextStation(station23);
        Station station24=new Station(2,"2���ߵ���վ",true,false);
        station23.setNextStation(station24);
         
        stationMap.put(1, station1);
        stationMap.put(1, station21);
         
        int n=getPosition(station1, "1���ߵ�һվ", "1231", 0);
        System.out.println(n);
    }
     
    /**
 
     * @param station
     * @param start
     * @param end
     * @param stationNum ǰ���Ѿ�����վ
     * @return
     */
    public static int getPosition(Station station,String start,String end,int stationNum){
        Iterator<Station> it=station.iterator();
        Station startStation=null;
        while(it.hasNext()){//�ҵ���ʼվ
            Station s=it.next();
            if(s.getStationName().equals(start)){
                startStation=s;
                break;
            }
        }
        Station next=startStation.getNextStation();
        int num=1;
        while(!next.getStationName().equals(end)){
            next=next.getNextStation();
            if(next==null){
                return -1;//���ɴ�
            }
            if(next.isTransfer){//����ǻ���վ
                //ѭ�����Կ��Ի��ɵ�·�� �ݹ����getPosition
            }else{//����ǻ���վ
                 
            }
            num++;
            System.out.println(stationNum+num);
        }
        return stationNum+num;
        
    }
 
    /**
     * վ����
     * @author Administrator
     *
     */
    static class Station implements Iterable<Station>{
        private int lineNum;//������
        private String stationName;//վ��
        private boolean isStartOrEnd;//�Ƿ�����վ��ĩվ
        private boolean isTransfer;//�Ƿ��ǻ���վ
        private Station nextStation;//ԓ���ߵ���һվ
        private Station preStation;//��һվ
        private Set<Integer> transferStations;//���Ի����Ǽ�����
         
        public Station(int lineNum,String stationName,boolean isStartOrEnd,boolean isTransfer){
            this.lineNum=lineNum;
            this.stationName=stationName;
            this.isStartOrEnd=isStartOrEnd;
            this.isTransfer=isTransfer;
        }
         
        public int getLineNum() {
            return lineNum;
        }
 
        public void setLineNum(int lineNum) {
            this.lineNum = lineNum;
        }
 
        public String getStationName() {
            return stationName;
        }
 
        public void setStationName(String stationName) {
            this.stationName = stationName;
        }
 
        public boolean isStartOrEnd() {
            return isStartOrEnd;
        }
 
        public void setStartOrEnd(boolean isStartOrEnd) {
            this.isStartOrEnd = isStartOrEnd;
        }
 
        public boolean isTransfer() {
            return isTransfer;
        }
 
        public void setTransfer(boolean isTransfer) {
            this.isTransfer = isTransfer;
        }
 
        public Station getNextStation() {
            return nextStation;
        }
 
        public void setNextStation(Station nextStation) {
            this.nextStation = nextStation;
        }
 
        public Station getPreStation() {
            return preStation;
        }
 
        public void setPreStation(Station preStation) {
            this.preStation = preStation;
        }
 
        public Set<Integer> getTransferStations() {
            return transferStations;
        }
 
        public void addTransferStations(Integer transferStation) {
            if(transferStations==null){
                transferStations=new HashSet<Integer>();
            }
            transferStations.add(transferStation);
        }
         
 
        @Override
        public String toString() {
            return "��ʼվ---> [lineNum=" + lineNum + ", stationName="
                    + stationName + ", isStartOrEnd=" + isStartOrEnd
                    + ", isTransfer=" + isTransfer + "]";
        }
 
        public Iterator<Station> iterator() {
            return new  StationIterator(this);
        }
         
    }
     
    static class StationIterator implements Iterator<Station>{
        private Station station;
        public StationIterator(Station station){
            this.station=station;
        }
        public boolean hasNext() {
            return station!=null;
        }
 
        public Station next() {
            Station temp=station;
            this.station=temp.getNextStation();
            return temp;
        }
 
        public void remove() {
             System.out.println("log");
        }
        
         
    }
 
}
