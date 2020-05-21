Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452211DCF00
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 16:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A90589292;
	Thu, 21 May 2020 14:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3QMhuVCdgsF; Thu, 21 May 2020 14:08:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6216689284;
	Thu, 21 May 2020 14:08:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C8BCC0891;
	Thu, 21 May 2020 14:08:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A44EDC0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97F5088623
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Muh31nMaqAGP for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 14:08:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D8FD88617
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 14:08:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LE7jmJ033874;
 Thu, 21 May 2020 14:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=VtH50d3j8PGL5fadgDPMpo+HStraNOmQY5K9l3SYH/Q=;
 b=cQK/u6IjxwwVLLC8pb1aAgmXTz3H7PM+14OySJ+Q+U9tTUVXD93HaHbcmmu7QTATP1kF
 AI15s21aN/QSHDEfTHep6UG5rA6yVmNE925zWrvYC9Rou652Czt7fz/unTGETkPCzuOi
 2utO3KjH+DGPhIBR4mqkwV98RmIyIiYFZyapOSM0OCGCgYzDbalsEfXNQzJd4PDphPYc
 RbH/mFKhqog5utSj40D3ddZ81RSrYB6V8pFLZ9ucxDlKgDT+jjvAhY/zrr6hdwomVuMD
 iLkDxlOUG1u9T+q2gyMhZP1kquuO2Mvke3AE6NR8dp9GSUwd/+SSP6zsmRlAseB5yRj3 Qg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31501rf7bp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 14:08:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LDqVLg161832;
 Thu, 21 May 2020 14:08:16 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 314gm982t9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 14:08:15 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04LE8DDm001199;
 Thu, 21 May 2020 14:08:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 21 May 2020 07:08:13 -0700
Date: Thu, 21 May 2020 17:08:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: syzbot <syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com>
Message-ID: <20200521140803.GI30374@kadam>
References: <0000000000007b211005a6187dc9@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0000000000007b211005a6187dc9@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=803
 adultscore=0 phishscore=0 mlxscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005210104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 mlxlogscore=829 clxscore=1011 priorityscore=1501 cotscore=-2147483648
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005210106
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 horatiu.vultur@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] KASAN: slab-out-of-bounds Read in br_mrp_parse
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

On Wed, May 20, 2020 at 11:23:18AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    dda18a5c selftests/bpf: Convert bpf_iter_test_kern{3, 4}.c..
> git tree:       bpf-next
                  ^^^^^^^^

I can figure out what this is from reading Next/Trees but it would be
more useful if it were easier to script.

> console output: https://syzkaller.appspot.com/x/log.txt?x=10c4e63c100000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=668983fd3dd1087e
> dashboard link: https://syzkaller.appspot.com/bug?extid=9c6f0f1f8e32223df9a4
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17eaba3c100000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=128598f6100000
> 

regards,
dan carpenter


