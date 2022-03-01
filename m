Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4FC4C9159
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 18:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91C2560C07;
	Tue,  1 Mar 2022 17:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmDdiDNqXXxc; Tue,  1 Mar 2022 17:20:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1F3FD60E8F;
	Tue,  1 Mar 2022 17:20:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C721BC007B;
	Tue,  1 Mar 2022 17:20:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EFAD2C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 17:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFE1160E5A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h6g_MqwmgRFc for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 17:20:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE63860B54
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 17:20:02 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 cp23-20020a17090afb9700b001bbfe0fbe94so2785219pjb.3
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 09:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9x7bVbTmKslH1o+b4w0DypYAmuXcIYWDpO7m/YGx0Qo=;
 b=T6MithCuHZshlDV57jTTWmaPRQiWB3Vu51iHZzs9uMkcD2KiIU0O8SEm0Mud/Bk9q0
 bi+xar/dppgJyefJgnB3QJEKbrup7tlgIr6fmM1v5voTNVSaRIVfJRI4fP7nkTnMgH+j
 lUFrsIQiNbBrT8sPzecjb+GCGn10inOHFOJlT73U1370WeR3SB42d17B+7ZybP++fCIb
 teBW+ABfyi0ogU9O11SabHkjMOeQ0Uv24M1sHgolj+ES6we7hf96BzHiAMWkMSH7hgy+
 Mqf6/n10dJpSgUc521cRXCRKMJn7kUNwDeDN7yT+Ky+j1W/ze+x+1LaU2ijtn2oXJzAt
 0oQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9x7bVbTmKslH1o+b4w0DypYAmuXcIYWDpO7m/YGx0Qo=;
 b=EyWalOfzDsmFFlc3XTdGiltLp/g+yU5S1Znfx/wsmY32sDTn9Gy0hPNXc3YioCjvt9
 nA7/5ZoKOqVon+6z4Up6KjhJFcalnGK5owZyK7/zJ6WmL6+sdN5n8ABfoIO6N6xE76iw
 VVceYZ5UE3dDPtAzbOQdaWwq16PEsm3ZzasZ1B+WqO0jcZAOeZohRSP5djOyxZhmQcsC
 81fmmxp3o/7R8MuDRCH3G0MMIJV3D0MoNK/32mPY5BWT5pAMsJtgjvwV4LYAtempN9GV
 YPuLw5lFkE/5biK0yOEobkT/4LDCWsreOu9kjclEFPDCMcJJ+tnlvWgFd4ac0PjhNalC
 /HEQ==
X-Gm-Message-State: AOAM530ktnXuRm3xy3SCi6izXdiXmFHDYODhudGQ63C+b9uIFU4LB4SK
 y/hLhYesBaICwaJ54HdjAlseWA==
X-Google-Smtp-Source: ABdhPJzr1ItsjT+0FV4MRTJS4f0uhZNMv14qPieGTQIdPmh6Yg3RVpWrsvm7SewNq78ieo9fUMg6XQ==
X-Received: by 2002:a17:902:7086:b0:14f:ee29:5ef0 with SMTP id
 z6-20020a170902708600b0014fee295ef0mr26224089plk.142.1646155202058; 
 Tue, 01 Mar 2022 09:20:02 -0800 (PST)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 g25-20020a633759000000b0036c4f1f95c4sm13649242pgn.40.2022.03.01.09.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 09:20:01 -0800 (PST)
Date: Tue, 1 Mar 2022 09:19:59 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20220301091959.4c8a893b@hermes.local>
In-Reply-To: <20220301162142.2rv23g4cyd2yacbs@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301162142.2rv23g4cyd2yacbs@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v2 net-next 00/10] net: bridge: Multiple
	Spanning Trees
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Tue, 1 Mar 2022 18:21:42 +0200
Vladimir Oltean <olteanv@gmail.com> wrote:

> Hi Tobias,
> 
> On Tue, Mar 01, 2022 at 11:03:11AM +0100, Tobias Waldekranz wrote:
> > A proposal for the corresponding iproute2 interface is available here:
> > 
> > https://github.com/wkz/iproute2/tree/mst  
> 
> Please pardon my ignorance. Is there a user-mode STP protocol application
> that supports MSTP, and that you've tested these patches with?
> I'd like to give it a try.

https://github.com/mstpd/mstpd
