//
//  Colors.swift
//  Cameras + Formats
//
//  Created by Zak Ray on 3/11/19.
//  Copyright © 2019 Zak Ray. All rights reserved.
//

import UIKit


public struct Colors {
    
    
    
    // MARK: CAMERA
    
    public static var cameraPrimary: UIColor {
        let light = #colorLiteral(red: 0, green: 0.8823389411, blue: 0.7399789691, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.7826755047, blue: 0.6497661471, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraPrimaryInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.6814078689, blue: 0.5688881278, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.5399374962, blue: 0.4235916138, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraPrimaryInsetInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.5791195631, blue: 0.4827325344, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.4283425808, blue: 0.3370867074, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraSecondary: UIColor {
        let light = #colorLiteral(red: 0, green: 0.7715075016, blue: 0.9401615858, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.692132771, blue: 0.8358299136, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraSecondaryInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.6087374687, blue: 0.7317470908, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.4538191557, blue: 0.5860154033, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraTertiary: UIColor {
        let light = #colorLiteral(red: 0, green: 0.594634831, blue: 0.8703606725, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.4519862533, blue: 0.6650935411, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraTertiaryInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.4559524059, blue: 0.6690543294, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.2538279295, blue: 0.4126980603, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraQuaternary: UIColor {
        let light = #colorLiteral(red: 0.0824386701, green: 0.3583207428, blue: 0.7757807374, alpha: 1)
        let dark = #colorLiteral(red: 0.08319533616, green: 0.3074849248, blue: 0.6744622588, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraQuaternaryInset: UIColor {
        let light = #colorLiteral(red: 0.07068199664, green: 0.2610007823, blue: 0.5689179301, alpha: 1)
        let dark = #colorLiteral(red: 0.03021588363, green: 0.1789512932, blue: 0.4151319265, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorChartHighlight: UIColor {
        let light = #colorLiteral(red: 0.1012251211, green: 0.5552750444, blue: 0.9525687273, alpha: 1)
        let dark = #colorLiteral(red: 0.08319533616, green: 0.3788287975, blue: 0.6744622588, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorChartHighlightAlpha: UIColor {
        let light = #colorLiteral(red: 0, green: 0.3979018232, blue: 1, alpha: 0.1712508065)
        let dark = #colorLiteral(red: 0.08319533616, green: 0.3074849248, blue: 0.6744622588, alpha: 0.5043108259)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorChartOutline: UIColor {
        let light = #colorLiteral(red: 0.8082687154, green: 0.8082687154, blue: 0.8082687154, alpha: 1)
        let dark = #colorLiteral(red: 0.3270318903, green: 0.3270318903, blue: 0.3270318903, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
    
    
    
    
    
    // MARK: CAMERA COMPARE
    
    public static var cameraPrimaryCompare: UIColor {
        let light = #colorLiteral(red: 0, green: 0.7721179068, blue: 0.8579087853, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.6797313094, blue: 0.7552570105, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraPrimaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.01259814296, green: 0.6025984673, blue: 0.6562348604, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.4609541347, blue: 0.502859056, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraPrimaryCompareInsetInset: UIColor {
        let light = #colorLiteral(red: 0.0414680317, green: 0.5533679724, blue: 0.5532492399, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.3991034031, blue: 0.4039772153, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraSecondaryCompare: UIColor {
        let light = #colorLiteral(red: 0.2977154774, green: 0.5738225733, blue: 0.9603725076, alpha: 1)
        let dark = #colorLiteral(red: 0.2751719093, green: 0.5090680323, blue: 0.8599122167, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraSecondaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.3152144849, green: 0.5317549109, blue: 0.759739995, alpha: 1)
        let dark = #colorLiteral(red: 0.08355202526, green: 0.354208678, blue: 0.6109654307, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraTertiaryCompare: UIColor {
        let light = #colorLiteral(red: 0.2312018037, green: 0.330288291, blue: 0.8257207274, alpha: 1)
        let dark = #colorLiteral(red: 0.2017758632, green: 0.2882512331, blue: 0.7206280828, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraTertiaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.1955521107, green: 0.2767894864, blue: 0.5184237361, alpha: 1)
        let dark = #colorLiteral(red: 0.07532785088, green: 0.1732535362, blue: 0.4480721951, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraQuaternaryCompare: UIColor {
        let light = #colorLiteral(red: 0.1674969792, green: 0.2514704466, blue: 0.5606654286, alpha: 1)
        let dark = #colorLiteral(red: 0.1401973963, green: 0.2051269114, blue: 0.4551357031, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var cameraQuaternaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.1451410353, green: 0.1868568063, blue: 0.3525257707, alpha: 1)
        let dark = #colorLiteral(red: 0.05452878028, green: 0.1115718856, blue: 0.2977599204, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
    public static var cameraPrimaryCompareB: UIColor {
        let light = #colorLiteral(red: 0.3497538567, green: 0.5013372302, blue: 0.9969188571, alpha: 1)
        let dark = #colorLiteral(red: 0.3497538567, green: 0.5013372302, blue: 0.9969188571, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorChartHighlightCompare: UIColor {
        let light = #colorLiteral(red: 0.3380477008, green: 0.3711453157, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.2896254368, green: 0.2033579404, blue: 0.660179587, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorChartHighlightCompareAlpha: UIColor {
        let light = #colorLiteral(red: 0.2692665642, green: 0, blue: 1, alpha: 0.1712508065)
        let dark = #colorLiteral(red: 0.2644429837, green: 0.08319533616, blue: 0.6744622588, alpha: 0.5043108259)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
    
    
    
    
    
    
    // MARK: FORMAT
    
    public static var formatPrimary: UIColor {
        let light = #colorLiteral(red: 0.09898997098, green: 0.7335235476, blue: 0.9417265058, alpha: 1)
        let dark = #colorLiteral(red: 0.07770008594, green: 0.6588363647, blue: 0.8376206756, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatPrimaryInset: UIColor {
        let light = #colorLiteral(red: 0.07778199762, green: 0.5786793828, blue: 0.735502243, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.4216142595, blue: 0.5848199129, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatPrimaryInsetInset: UIColor {
        let light = #colorLiteral(red: 0.07551666349, green: 0.4985213876, blue: 0.6333829165, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.3463511467, blue: 0.4823756814, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatSecondary: UIColor {
        let light = #colorLiteral(red: 0.2452736795, green: 0.5804435611, blue: 0.9261259437, alpha: 1)
        let dark = #colorLiteral(red: 0.2198788226, green: 0.5156213641, blue: 0.8232938647, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatSecondaryInset: UIColor {
        let light = #colorLiteral(red: 0.1926632226, green: 0.450820148, blue: 0.720466435, alpha: 1)
        let dark = #colorLiteral(red: 0.166503638, green: 0.38702178, blue: 0.6175894737, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatTertiary: UIColor {
        let light = #colorLiteral(red: 0.1740567684, green: 0.3573866487, blue: 0.7345966697, alpha: 1)
        let dark = #colorLiteral(red: 0.150229454, green: 0.3067836761, blue: 0.6312541962, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatTertiaryInset: UIColor {
        let light = #colorLiteral(red: 0.1263286471, green: 0.2561793625, blue: 0.5279089212, alpha: 1)
        let dark = #colorLiteral(red: 0.1018706039, green: 0.2066005766, blue: 0.4245259762, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatQuaternary: UIColor {
        let light = #colorLiteral(red: 0.2199603021, green: 0.2417429686, blue: 0.7583201528, alpha: 1)
        let dark = #colorLiteral(red: 0.1611610353, green: 0.1765274704, blue: 0.5529395938, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatQuaternaryInset: UIColor {
        let light = #colorLiteral(red: 0.05122632533, green: 0.07064511627, blue: 0.5214738846, alpha: 1)
        let dark = #colorLiteral(red: 0.03096983954, green: 0.04239984602, blue: 0.313514173, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
    
    
    
    
    
    
    // MARK: FORMAT COMPARE
    
    public static var formatPrimaryCompare: UIColor {
        let light = #colorLiteral(red: 0.3280877471, green: 0.6475558281, blue: 0.9438795447, alpha: 1)
        let dark = #colorLiteral(red: 0.2939218879, green: 0.5797865391, blue: 0.8454423547, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatPrimaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.2575164437, green: 0.5069543719, blue: 0.7387698293, alpha: 1)
        let dark = #colorLiteral(red: 0.01514299493, green: 0.3404866457, blue: 0.5882219672, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatPrimaryCompareInsetInset: UIColor {
        let light = #colorLiteral(red: 0.223218441, green: 0.4361274242, blue: 0.6362339854, alpha: 1)
        let dark = #colorLiteral(red: 0.01630507596, green: 0.2775772512, blue: 0.4852813482, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatSecondaryCompare: UIColor {
        let light = #colorLiteral(red: 0.4576175213, green: 0.4973075986, blue: 0.9387694001, alpha: 1)
        let dark = #colorLiteral(red: 0.4063306451, green: 0.4421803951, blue: 0.8335927129, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatSecondaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.3572937846, green: 0.3880147338, blue: 0.7325800657, alpha: 1)
        let dark = #colorLiteral(red: 0.3070075214, green: 0.3338876367, blue: 0.6294655204, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatTertiaryCompare: UIColor {
        let light = #colorLiteral(red: 0.3290871978, green: 0.2927573323, blue: 0.7461480498, alpha: 1)
        let dark = #colorLiteral(red: 0.2840573192, green: 0.253978014, blue: 0.6467846036, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatTertiaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.1913870275, green: 0.171322912, blue: 0.4356098771, alpha: 1)
        let dark = #colorLiteral(red: 0.1455503404, green: 0.1304951906, blue: 0.3320910037, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatQuaternaryCompare: UIColor {
        let light = #colorLiteral(red: 0.2199603021, green: 0.2417429686, blue: 0.7583201528, alpha: 1)
        let dark = #colorLiteral(red: 0.1611610353, green: 0.1765274704, blue: 0.5529395938, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var formatQuaternaryCompareInset: UIColor {
        let light = #colorLiteral(red: 0.1447638273, green: 0.1862406135, blue: 0.3512928784, alpha: 1)
        let dark = #colorLiteral(red: 0.1024269238, green: 0.1308635175, blue: 0.2481513023, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
    
    
    
    
    
    
    
    // MARK: LENSES
    
    public static var lensPrimary: UIColor {
        let light = #colorLiteral(red: 0.1106530014, green: 0.6573162611, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.5562145114, blue: 0.9048855901, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensPrimaryInset: UIColor {
        return lensPrimary.darker(componentDelta: 0.2)
    }
    public static var lensPrimaryInsetInset: UIColor {
        return lensPrimary.darker(componentDelta: 0.3)
    }
    public static var lensSecondary: UIColor {
        let light = #colorLiteral(red: 0.4529927206, green: 0.4015233046, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.3151141107, green: 0.2178114653, blue: 0.978720367, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensSecondaryInset: UIColor {
        return lensSecondary.darker(componentDelta: 0.1)
    }
    public static var lensSecondaryText: UIColor {
        let light = #colorLiteral(red: 0.4900991813, green: 0.3903028008, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.43, green: 0.4395, blue: 1, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensSecondaryInsetButton: UIColor {
        let light = #colorLiteral(red: 0.8544863746, green: 0.8650126175, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.05782175809, green: 0.0005790794967, blue: 0.4115377963, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensSecondaryInsetButtonInset: UIColor {
        let light = #colorLiteral(red: 0.7104035462, green: 0.7313525302, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.1656945501, green: 0.07220625793, blue: 0.7433807996, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensSecondaryInsetButtonSelectionColorOnSpecLabel: UIColor {
        let light = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.8545356802, green: 0.8545356802, blue: 0.8545356802, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensSecondayInsetButtonSelectionColor: UIColor {
        let light = #colorLiteral(red: 0.4529927206, green: 0.4015233046, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0.8545356802, green: 0.8545356802, blue: 0.8545356802, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var lensTertiary: UIColor {
        let light = #colorLiteral(red: 0.5043667578, green: 0.2394709886, blue: 0.9769818572, alpha: 1)
        let dark = #colorLiteral(red: 0.317345257, green: 0, blue: 0.6802438749, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
     public static var lensTertiaryInset: UIColor {
         return lensTertiary.darker(componentDelta: 0.1)
     }
     public static var lensSensorChartHighlight: UIColor {
         let light = #colorLiteral(red: 0, green: 0.8823389411, blue: 0.7399789691, alpha: 1)
         let dark = #colorLiteral(red: 0, green: 0.7826755047, blue: 0.6497661471, alpha: 1)
         if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
         } else { return light }
     }
     public static var lensSensorChartHighlightAlpha: UIColor {
         let light = #colorLiteral(red: 0, green: 0.8823389411, blue: 0.7399789691, alpha: 0.3052541973)
         let dark = #colorLiteral(red: 0, green: 0.7826755047, blue: 0.6497661471, alpha: 0.5044260593)
         if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
         } else { return light }
     }
     public static var lensSensorChartOutOfBoundsHighlight: UIColor {
         let light = #colorLiteral(red: 0.9489397321, green: 0.2500148681, blue: 0.5449739881, alpha: 1)
         let dark = #colorLiteral(red: 0.5559738055, green: 0.01489215567, blue: 0.2432385423, alpha: 1)
         if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
         } else { return light }
     }
     public static var lensSensorChartOutOfBoundsHighlightAlpha: UIColor {
         let light = #colorLiteral(red: 0.6244436251, green: 0.01672616872, blue: 0.2731940886, alpha: 0.1519403521)
         let dark = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 0.5)
         if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
         } else { return light }
     }
    
    
    
    
    
    
    
    // MARK: TOOLBAR GRADIENTS
    
    public static var gradient1: [CGColor] {
        return [#colorLiteral(red: 0.7638388276, green: 0.7880264521, blue: 0.377807498, alpha: 1),#colorLiteral(red: 0.519869566, green: 0.790330708, blue: 0.3811757565, alpha: 1)]
    }
    
    public static var gradient2: [CGColor] {
        return [#colorLiteral(red: 0.4747862816, green: 0.7911934257, blue: 0.3771674633, alpha: 1),#colorLiteral(red: 0.07390335947, green: 0.7903243899, blue: 0.5009013414, alpha: 1)]
    }
    
    public static var gradient3: [CGColor] {
        return [#colorLiteral(red: 0.06115117669, green: 0.7943055034, blue: 0.5095024109, alpha: 1),#colorLiteral(red: 0.3771622777, green: 0.7821437716, blue: 0.7381953597, alpha: 1)]
    }
    
    public static var gradient4: [CGColor] {
        return [#colorLiteral(red: 0.3793222308, green: 0.7781216502, blue: 0.734223783, alpha: 1),#colorLiteral(red: 0.2322532535, green: 0.7574492097, blue: 0.9106212258, alpha: 1)]
    }
    
    public static var gradient5: [CGColor] {
        return [#colorLiteral(red: 0.2309580743, green: 0.7492569685, blue: 0.9195330143, alpha: 1),#colorLiteral(red: 0.4332049489, green: 0.659889698, blue: 1, alpha: 1)]
    }
    
    public static var gradient6: [CGColor] {
        return [#colorLiteral(red: 0.4266910553, green: 0.6478946805, blue: 0.9949216247, alpha: 1),#colorLiteral(red: 0.4791612029, green: 0.5436077118, blue: 0.9988093972, alpha: 1)]
    }
    
    public static var gradient7: [CGColor] {
        return [#colorLiteral(red: 0.4825478792, green: 0.485220015, blue: 0.8229108453, alpha: 1),#colorLiteral(red: 0.5531355739, green: 0.3693122566, blue: 0.920990169, alpha: 1)]
    }
    
    public static var gradient8: [CGColor] {
        return [#colorLiteral(red: 0.5962878466, green: 0.4144805074, blue: 0.9234706163, alpha: 1),#colorLiteral(red: 0.7212744355, green: 0.4053399563, blue: 0.8186594248, alpha: 1)]
    }
    
    public static var gradient9: [CGColor] {
        return [#colorLiteral(red: 0.7208132148, green: 0.4097477198, blue: 0.8185225129, alpha: 1),#colorLiteral(red: 0.8438763022, green: 0.4021770954, blue: 0.733056128, alpha: 1)]
    }
    
    public static var gradient10: [CGColor] {
        return [#colorLiteral(red: 0.8448271155, green: 0.389780283, blue: 0.6831501126, alpha: 1),#colorLiteral(red: 0.9211733341, green: 0.4116480947, blue: 0.5737993717, alpha: 1)]
    }
    
    public static var gradient11: [CGColor] {
        return [#colorLiteral(red: 0.9006717801, green: 0.3958245516, blue: 0.5624545217, alpha: 1),#colorLiteral(red: 0.9993334413, green: 0.4671404958, blue: 0.5546485186, alpha: 1)]
    }
    public static var gradient12: [CGColor] {
        return [#colorLiteral(red: 0.9359006298, green: 0.4481288135, blue: 0.06758137279, alpha: 1), #colorLiteral(red: 1, green: 0.9338440434, blue: 0, alpha: 1)]
    }
    
    
    
    
    
    
    // MARK: MISC
    
    public static var shadow: UIColor {
        let light = #colorLiteral(red: 0.7109481587, green: 0.7109481587, blue: 0.7109481587, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var specLabel: UIColor {
        let light = #colorLiteral(red: 0.9300000072, green: 0.9300000072, blue: 0.9300000072, alpha: 1)
        let dark = #colorLiteral(red: 0.1099999994, green: 0.1099999994, blue: 0.1099999994, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var specLabelInset: UIColor {
        let light = #colorLiteral(red: 0.8500000238, green: 0.8500000238, blue: 0.8500000238, alpha: 1)
        let dark = #colorLiteral(red: 0.200000003, green: 0.200000003, blue: 0.200000003, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var specLabelInsetInset: UIColor {
        let light = #colorLiteral(red: 0.75, green: 0.75, blue: 0.75, alpha: 1)
        let dark = #colorLiteral(red: 0.2860000134, green: 0.2860000134, blue: 0.2860000134, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var greyText: UIColor {
        let light = #colorLiteral(red: 0.2579999864, green: 0.2579999864, blue: 0.2579999864, alpha: 1)
        let dark = #colorLiteral(red: 0.84799999, green: 0.84799999, blue: 0.84799999, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var whiteBlack: UIColor {
        let light = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var blackWhite: UIColor {
        let light = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let dark = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var inactive: UIColor {
        let light = #colorLiteral(red: 0.887912333, green: 0.8880614638, blue: 0.8878926635, alpha: 1)
        let dark = #colorLiteral(red: 0.1739786565, green: 0.174014926, blue: 0.1739738882, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var errorRed: UIColor {
        let light = #colorLiteral(red: 1, green: 0.7409999967, blue: 0.7450000048, alpha: 1)
        let dark = #colorLiteral(red: 0.2419999987, green: 0.1340000033, blue: 0.1360000074, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var statusGreen: UIColor {
        let light = #colorLiteral(red: 0.2460000068, green: 0.8889999986, blue: 0.3860000074, alpha: 1)
        let dark = #colorLiteral(red: 0.1599999964, green: 0.8019999862, blue: 0.3000000119, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var statusRed: UIColor {
        let light = #colorLiteral(red: 0.9750000238, green: 0.2700000107, blue: 0.2809999883, alpha: 1)
        let dark = #colorLiteral(red: 0.8640000224, green: 0.2389999926, blue: 0.2389999926, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var statusOrange: UIColor {
        let light = #colorLiteral(red: 0.9440000057, green: 0.7419999838, blue: 0, alpha: 1)
        let dark = #colorLiteral(red: 0.8489999771, green: 0.6669999957, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var facebook: UIColor {
        let light = #colorLiteral(red: 0.2590000033, green: 0.4040000141, blue: 0.6980000138, alpha: 1)
        let dark = #colorLiteral(red: 0.2590000033, green: 0.4040000141, blue: 0.6980000138, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var twitter: UIColor {
        let light = #colorLiteral(red: 0.1140000001, green: 0.6309999824, blue: 0.949000001, alpha: 1)
        let dark = #colorLiteral(red: 0.1140000001, green: 0.6309999824, blue: 0.949000001, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var units: UIColor {
        let light = #colorLiteral(red: 0.9468230605, green: 0.7860037088, blue: 0.1883921027, alpha: 1)
        let dark = #colorLiteral(red: 0.9285476804, green: 0.7481254339, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var unitsInset: UIColor {
        let light = #colorLiteral(red: 0.8243281245, green: 0.6392126083, blue: 0, alpha: 1)
        let dark = #colorLiteral(red: 0.7449346781, green: 0.5644766092, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensor: UIColor {
        let light = #colorLiteral(red: 0.5844157338, green: 0.8982174993, blue: 0.2720108628, alpha: 1)
        let dark = #colorLiteral(red: 0.4905915856, green: 0.8376539946, blue: 0.08588435501, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var sensorInset: UIColor {
        let light = #colorLiteral(red: 0.4245185256, green: 0.7602111101, blue: 0, alpha: 1)
        let dark = #colorLiteral(red: 0.3406417966, green: 0.6667097211, blue: 0, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var region: UIColor {
        let light = #colorLiteral(red: 0.1763291359, green: 0.8765909672, blue: 0.6687273383, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.8022790551, blue: 0.5898671746, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var regionInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.7270578742, blue: 0.5374907851, alpha: 1)
        let dark = #colorLiteral(red: 0, green: 0.6098741889, blue: 0.4328457117, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var resolutionClass: UIColor {
        let light = #colorLiteral(red: 0, green: 0.9, blue: 0.9, alpha: 1)
        let dark = #colorLiteral(red: 0.03189192712, green: 0.8520439267, blue: 0.8520439267, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    public static var resolutionClassInset: UIColor {
        let light = #colorLiteral(red: 0, green: 0.71, blue: 0.7099859651, alpha: 1)
        let dark = #colorLiteral(red: 0.02431421627, green: 0.6495932411, blue: 0.6495932411, alpha: 1)
        if #available(iOS 13.0, *) { return UIColor { (traits) -> UIColor in return traits.userInterfaceStyle == .dark ? dark : light }
        } else { return light }
    }
    
}
    




public extension UIColor {
    
    func makeColor(componentDelta: CGFloat) -> UIColor {
            var red: CGFloat = 0
            var blue: CGFloat = 0
            var green: CGFloat = 0
            var alpha: CGFloat = 0
            
            // Extract r,g,b,a components from the
            // current UIColor
            getRed(
                &red,
                green: &green,
                blue: &blue,
                alpha: &alpha
            )
            
            // Create a new UIColor modifying each component
            // by componentDelta, making the new UIColor either
            // lighter or darker.
            return UIColor(
                red: add(componentDelta, toComponent: red),
                green: add(componentDelta, toComponent: green),
                blue: add(componentDelta, toComponent: blue),
                alpha: alpha
            )
    }
    func add(_ value: CGFloat, toComponent: CGFloat) -> CGFloat {
            return max(0, min(1, toComponent + value))
    }
    func lighter(componentDelta: CGFloat = 0.1) -> UIColor {
        return makeColor(componentDelta: componentDelta)
    }
    
    func darker(componentDelta: CGFloat = 0.1) -> UIColor {
        return makeColor(componentDelta: -1*componentDelta)
    }
    
    

}
