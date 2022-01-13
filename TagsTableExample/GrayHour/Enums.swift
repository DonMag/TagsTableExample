//
//  Enums.swift
//  GrayHourFrameworks
//
//  Created by Zak Ray on 2/26/21.
//

import Foundation

public enum DeviceSize {
    case iPhone5
    case iPhone8
    case iPhonePlus
    case iPhoneX
    case iPad
}

public enum CompareMode {
    case off
    case A
    case B
}

public enum AddOrEditMode {
    case add
    case edit
}

public enum PrimaryTableType {
    case mainTable
    case subTable
    case searchEntry
    case searchFilterTable
    case filterCategoryTable
    case filterSelectionTable
    case recentsTable
}

public enum CameraTool: String, Codable {
    case favorites
    case specs
    case formats
    case storage
    case transfer
    case sensor
    case power
    case compatibility
    case notes
    case saved
    case settings
    case lenses
}

public enum LensTool: String, Codable {
    case admin
    case favorites
    case specs
    case coverage
    case equivalent
    case dof
    case fov
    case saved
    case settings
}


public enum AppMode: String, Codable {
    case cameras
    case formats
    case lenses
}


public enum DropdownType {
    case primary
    case standard
    case standardWithIcon
    case resolution
}





public enum Group: String, Codable, CaseIterable {
    // camera
    case Arri
    case Blackmagic
    case Canon
    case Panasonic
    case Red
    case Sony
    case Drones
    case OtherCameras = "Other Cameras"
    case Codecs
    case RawFormats = "Raw Formats"
    case ImageSequences = "Image Sequences"
    case TapeFormats = "Tape Formats"
    case AudioFormats = "Audio Formats"
    case StnadardSensorSizes = "Standard Sensor Sizes"
    case Placeholder
    // lens
    case Angénieux
    case PSTechnik = "P+S Technik"
    case Leica
    case Schneider
    case Fujinon
    case Cooke
    case OtherLenses = "Other Lenses"
    case Zeiss
    case Panavision
    case Hawk
    case GenericLens = "Generic Lens"
    case CurrentKit = "Current Kit"
}

public enum WeightUnits: String, Codable, CaseIterable {
    case lbs
    case kgs
}

public enum DistanceUnits: String, Codable, CaseIterable {
    case feet
    case meters
}

public enum UnitStandard: String, Codable, CaseIterable {
    case metric
    case imperial
}

public enum FractionsDecimals: String, Codable, CaseIterable {
    case fraction
    case decimal
}

public enum FractionGranularity: String, Codable, CaseIterable {
    case tenths
    case quarters
    case thirds
    case halves
    case halvesAndThirds = "halves and thirds"
    case whole
}


public enum Type {
    case prime
    case zoom
}

public enum Build: String, Codable {
    case cine = "Cine"
    case still = "Still"
}

public enum DataSystem: String, Codable, CaseIterable {
    case cookeI = "Cooke /i"
    case arriLDS = "Arri LDS"
    case arriLDS2 = "Arri LDS2"
    case zeisseXtended = "Zeiss eXtended"
    case canon = "Canon"
    case panavisionDXL = "Panavision DXL Metadata"
    case none = "none"
    case placeholder = "Placeholder"
}


public enum CameraSection: String, Codable, CaseIterable {
    case Cine = "Cine"
    case Stills = "Stills"
    case Broadcast = "Broadcast / ENG"
    case Camcorder = "Camcorder"
    
    // I tried to delete the below but it wouldn't import anymore. Changing the JSON causes a crash
    case Apple = "Apple"
    case AJA = "AJA"
    case DigitalBolex = "Digital Bolex"
    case DJI = "DJI"
    case Fuji = "Fuji"
    case GoPro = "GoPro"
    case Leica = "Leica"
    case Nikon = "Nikon"
    case Panavision = "Panavision"
    case Phantom = "Phantom"
    case Sigma = "Sigma"
    case ZCam = "ZCam"
    //

    case Drones = "Drones"
    case Mobile = "Phones / Action Cameras"
    case HighSpeed = "High Speed Cameras"
    
    case Film = "Film"
    case Digital = "Digital"
}



public enum BitrateType: String, Codable {
    case variable = "Variable"
    case fixed = "Fixed"
    case userDefined = "User Defined"
}


public enum FilterLensMountCamera: String, Codable, CaseIterable {
    case ArriPL = "Arri PL"
    case ArriLPL = "Arri LPL"
    case CanonEF = "Canon EF"
    case CanonRF = "Canon RF"
    case SonyE = "Sony E"
    case MFT = "MFT"
    case NikonF = "Nikon F"
    case B4 = "B4"
    case LeicaL = "Leica L"
//    case FujiX = "Fuji X"
//    case KineMount = "KineMount"
}

public enum FilterLensMountLens: String, Codable, CaseIterable {
    case ArriPL = "Arri PL"
    case ArriLPL = "Arri LPL"
    case ArriXPL = "Arri XPL"
    case CanonEF = "Canon EF"
    case CanonRF = "Canon RF"
    case NikonF = "Nikon F"
    case SonyE = "Sony E"
    case SonyFZ = "Sony FZ"
    case MFT = "MFT"
    case B4 = "B4"
    case LeicaL = "Leica L"
    case FujiX = "Fuji X"
    case ArriBayonet = "Arri Bayonet"
    case C = "C Mount"
    case PanavisionPV = "Panavision PV"
    case Panavision65 = "Panavision PV65"
    case Panavision70 = "Panavision PV70"
    case KineMount = "KineMount"
    case CanonM = "Canon M"
    case SonyA = "Sony A"
    case NikonZ = "Nikon Z"
    case CanonEFM = "Canon EF-M"
}

public enum PickerMode: String, Codable {
    case time
    case space
    case batteryWh
    case batteryMaH
    case sensorBrowse
    case sensorDropdown
}



public enum TipEvent {
    case none
    case speedFieldTapped
    case fpsFieldTapped
    case saveAdded
    case sensorMatchTapped
    case exactImageCircleTapped
    case genericImageCircleTapped
    case s35EquivalentTapped
}

public enum ErrorViewMessage {
    case genericLens
    case noData
}


public enum DropdownGroupState {
    case collapsed
    case expanded
}


public enum ResolutionClass: String, Codable, CaseIterable {
    case SD = "SD"
    case HD = "HD"
    case FourK = "4K"
    case SixK = "6K"
    case EightK = "8K"
    case TwelveK = "12K"
}


public enum FilterSensorSize: String, Codable, CaseIterable {
    case LargeFormat = "Large Format"
    case Super35 = "Super35"
    case Super16 = "Super16"
    case MFT = "Micro 4/3 (MFT)"
    case twoThirdsInch = "2/3\""
    case halfInch = "1/2\""
    case thirdInch = "1/3\""
}

public enum FilterResolution: String, Codable, CaseIterable {
    case HD = "HD"
    case FourK = "4K"
    case SixK = "6K"
    case EightK = "8K"
}

public enum FilterSlowMotion: String, Codable, CaseIterable {
    case fourtyEight = "48p"
    case fifty = "50p"
    case sixty = "60p"
    case oneHundred = "100p"
    case oneHundredTwenty = "120p"
    case twoHundred = "200p"
    case twoHundredForty = "240p"
    case fourEighty = "480p"
    case oneThousandPlus = "1000p +"
}

public enum FilterWeight: String, Codable, CaseIterable {
    case lessThanOne = "< 1 lb"
    case oneToTwo = "1-2 lbs"
    case threeToFive = "3-5 lbs"
    case sixToNine = "6-9 lbs"
    case tenPlus = "10+ lbs"
}

public enum FilterRaw: String, Codable, CaseIterable {
    case internalRaw = "Internal Raw"
    case externalRaw = "External Raw"
}

public enum FilterBitDepth: String, Codable, CaseIterable {
    case eightBit = "8 bit"
    case tenBit = "10 bit"
    case twelveBit = "12 bit"
    case sixteenBit = "16 bit"
}

public enum FilterChroma: String, Codable, CaseIterable {
    case fourTwoZero = "4:2:0"
    case fourTwoTwo = "4:2:2"
    case fourFourFour = "4:4:4"
}

//public enum FilterColorSpace: String, Codable, CaseIterable {
//    case yCbCr = "YCbCr"
//    case rgb = "RGB"
//    case raw = "Raw"
//}

public enum FilterCompression: String, Codable, CaseIterable {
    case intraFrame = "Intra"
    case gop = "GOP"
}

public enum FilterNetflix: String, Codable, CaseIterable {
    case isNetlflixApproved = "Netflix approved"
}

public enum FilterND: String, Codable, CaseIterable {
    case hasInternalND = "Internal ND filters"
}






public enum CameraFilter: String, Codable, CaseIterable {
    case SensorSize = "Sensor Size"
    case LensMount = "Lens Mount"
    case Resolution = "Resolution"
    case SlowMotion = "Slow Motion"
    case Weight = "Weight"
    case BitDepth = "Bit Depth"
    case Chroma = "Chroma"
    case Compression = "Compression"
    case Raw = "Raw"
    case InternalND = "Internal ND"
    case Netflix = "Netflix"
}

public enum LensFilter: String, Codable, CaseIterable {
    case type = "PRIME/ZOOM"
    case build = "BUILD"
}
