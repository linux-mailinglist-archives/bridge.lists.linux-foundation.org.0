Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC77825F095
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FAC285C52;
	Sun,  6 Sep 2020 21:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PSaBeb6W0X1T; Sun,  6 Sep 2020 21:14:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD30185C37;
	Sun,  6 Sep 2020 21:14:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD34FC0051;
	Sun,  6 Sep 2020 21:14:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDC69C0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D599D86697
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzmrUuyz3qS9 for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:14:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0940486663
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:14:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z9so12075121wmk.1
 for <bridge@lists.linux-foundation.org>; Sun, 06 Sep 2020 14:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Jx/2AQJ19GgF5GMqfvKOGk4UBA5cUToV3mcDGBZKY0M=;
 b=fhmW+fC2PmioUdyyeuNSunMjhlR4qJ2lZZGtlYKxTJR3KMU9Ujv6Lhc7LgQ4BBVHlG
 NyZWuH8GlRz54X0DUGci+HlYmYOQif6XyoPJPiDDZx6/suJwWtNKVNcKjnG6aNJwMrKQ
 8VavQF54Sr+nIii/kNlkV2PW2OuMxlGb3cwWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Jx/2AQJ19GgF5GMqfvKOGk4UBA5cUToV3mcDGBZKY0M=;
 b=hMbAaqSEhIeVrReRrjUh6NF0gXTflw4hQWfva9tCRtbOTWjPLnG97FnQh1OMWVWVrj
 G0G2szB5MTIHx3LYohFarEDMzoqgfvCqscpm7XZ5XVGZpTzZBimQGMsdB0MRjpca6K4q
 XQuRPr0l9OvjNbJxqu8lMCnmb67Dak7nibdbLO3sXRbACTRghlGlvdDIWmWD7WKoQFN0
 MMm6tiTL/fMa2Kjsxdn4Tb9gK60MF0K9VDkPuvTxHcpH4Qul5Spgt26ZCyLND/tYVJTg
 n602KwkWgjhb+NHLPeEAwU6gLy7RYOfASUhEzdMWO2lhhng3u8h2Dkfx3OSH6x+EriDs
 Zg+w==
X-Gm-Message-State: AOAM530MDoNNg7fKr18h+r5RF+o/5RSiCFaiO6682HDplakGcgaFE4Py
 FMSoZVkUktgeRJcvxrgYvIXF3g==
X-Google-Smtp-Source: ABdhPJx6VgyIgp3B6hY9iDES8IcTXexiYYix88fGOdcqnAH3S7QJjVStQYozTReUd+eCBzWNryxveg==
X-Received: by 2002:a1c:3886:: with SMTP id
 f128mr17685983wma.121.1599426895517; 
 Sun, 06 Sep 2020 14:14:55 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id
 n124sm24149928wmn.29.2020.09.06.14.14.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Sep 2020 14:14:54 -0700 (PDT)
To: Jakub Kicinski <kuba@kernel.org>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-7-nikolay@cumulusnetworks.com>
 <20200906140136.77ae178d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <4f8ec4f0-6311-3b18-c7c4-a3a49b8d94b4@cumulusnetworks.com>
Date: Mon, 7 Sep 2020 00:14:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200906140136.77ae178d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 06/15] net: bridge: mcast: add
 support for group query retransmit
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

On 9/7/20 12:01 AM, Jakub Kicinski wrote:
> On Sat,  5 Sep 2020 11:24:01 +0300 Nikolay Aleksandrov wrote:
>> We need to be able to retransmit group-specific and group-and-source
>> specific queries. The new timer takes care of those.
> 
> What guarantees that timer will not use pg after free? Do timer
> callbacks hold the RCU read lock?
> 

See the last patch, it guarantees no entry timer will be used when it's freed.
